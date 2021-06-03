import React from 'react';
import styled from 'styled-components';
import {motion} from 'framer-motion';
import DockerLogo from '../images/icons8-docker.svg';

const Section = styled.section`
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background: #F4E4C9;
`;

const Container = styled.div`
display: grid;
grid-template-columns: 1fr 1fr;
height: 100vh;
padding: 3rem calc((100vw - 1300px) /2);

@media screen and (max-width: 768px) {
	grid-grid-template-columns: 1fr;
}
`;

const ColumnLeft = styled.div`
display: flex;
color: #131313;
flex-direction: column;
justify-content: top;
align-items: flex start;
padding: 5rem 2rem;

 h1{
	 margin-bottom:0.5rem;
	 font-size: 2rem;
 }

 p {
	 margin: 5rem 0;
	 font-size: 5rem;
	 line-height: 1.1;
 }
`;

const Button = styled(motion.button)`
 padding: 1rem 5rem;
 font-size: 2rem;
 border: 5px solid #F4E4C9;
 border-radius: 4px;
 outline: none;

 background: black;
 color: #fff;
`;

const Image = styled(motion.img)`
position: relative;
width: 100%;
height: 100%;
max-width: 250px;
max-height: 250px;
`;

const ColumnRight = styled.div`
display: flex;
justify-content: right;
align-items: center;
padding: 2rem;
position: relative;

${Image}:nth-child(1) {
	top: 5px;
	left: 10px;
}

${Image}:nth-child(2) {
	top: 200px;
	right: 10px;
}
`;

const Hero = () => {
	const fadeLeft = {
		hidden: { opacity: 0, x: -100},
		visible: { opacity: 1, x: 0}
	}
	return (
		<Section>
			<Container>
				<ColumnLeft>
				<motion.p
				variants={fadeLeft}
				initial='hidden'
				animate='visible'
				transition={{ duration: 1 }}
				>
					Welcome to my Inception website
				</motion.p>
				<Button
				whileHover={{ scale: 1.05 }}
				whileTap={{
					scale: 0.95,
					backgroundColor: '#E5C9F4',
					border: 'none',
					color: '#000'
				}}
				initial={{ opacity: 0}}
				animate={{ opacity: 1, transition: { duration: 1} }}
				>
					Name : Sofia
				</Button>
				<Button
				whileHover={{ scale: 1.05 }}
				whileTap={{
					scale: 0.95,
					backgroundColor: '#EAA1A1',
					border: 'none',
					color: '#000'
				}}
				initial={{ opacity: 0}}
				animate={{ opacity: 1, transition: { duration: 1} }}
				>
					Age : 26
				</Button>
				<Button
				whileHover={{ scale: 1.05 }}
				whileTap={{
					scale: 0.95,
					backgroundColor: '#A1EAB3',
					border: 'none',
					color: '#000'
				}}
				initial={{ opacity: 0}}
				animate={{ opacity: 1, transition: { duration: 1} }}
				>
					Hobbies : None
				</Button>
				<Button
				whileHover={{ scale: 1.05 }}
				whileTap={{
					scale: 0.95,
					backgroundColor: '#67F6E7',
					border: 'none',
					color: '#000'
				}}
				initial={{ opacity: 0}}
				animate={{ opacity: 1, transition: { duration: 1} }}
				>
					I hope you enjoyed my Inception project
				</Button>
				</ColumnLeft>
				<ColumnRight>
				<Image
					src={DockerLogo}
					alt='docker'
					whileTap={{scale:0.9}}
					drag={true}
					dragConstraints={{left: 0, right: 250, top: 0, bottom: 50}}
					initial={{opacity: 0, y: -100}}
					animate={{opacity: 1, y: 0, transition: { duration: 1} }}
				/>
				<Image
					src={DockerLogo}
					alt='docker'
					whileTap={{scale:0.9}}
					drag={true}
					dragConstraints={{left: 0, right: 0, top: 0, bottom: 50}}
					initial={{opacity: 0, y: 100}}
					animate={{opacity: 1, y: 0, transition: { duration: 1} }}
				/>
				</ColumnRight>
			</Container>
		</Section>
	);
};

export default Hero;
