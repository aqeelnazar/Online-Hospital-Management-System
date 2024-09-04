<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arogya</title>
    <link rel="stylesheet" href="CSS/home.css">
</head>
<body>
<jsp:include page="header.jsp" />

    <div class="content">
   <!--content-->
    <br>


    <div class="signup">
        <img src="Image/coverr.jpeg" alt="signup" class="signupImg">
        <div class="text-overlay">
          <h3>"Empower your health journey."</h3>
          <a href="register.jsp" class="regiBtn">Create an Account</a>
        </div>
        <div class="text">Better service within one system</div>
    </div>
    
    <div class="welcome">
    <div class="welcome-content">
        <h2>Welcome to <span>Arogya</span></h2>
        <h3>Dedicated to You</h3>
        <p class="tagline">Compassion, Innovation & Excellence</p>
        <p class="description">Since our establishment in 1970, we have been at the forefront of medical excellence and innovation, driven by our unwavering commitment to compassionate care.</p>
        <p class="description">At Arogya, we offer a wide range of modern facilities, including spacious rooms and state-of-the-art critical care units, ensuring the highest standards of comfort and safety for our patients.</p>
    </div>
</div>

    <div class="appointment">
        <img src="Image/doctor.jpeg " alt="signup" class="appointmentImg">
        
        <div class="text-overlay">
          <h3>"Secure your next medical appointment effortlessly. Book now for peace of mind."</h3>
          <a href="DoctorAppointment.jsp" class="regiBtn">Book an appointment</a>
        </div>
        
        <div class="text">Meet the best doctors</div>
    </div>

   <br><br>
    </div>
    <footer class="footer">
        <div class="footer-inner">

            <div class="footer-column">
                <img class="footer-logo" src="Image/logo.png" alt="logo">
            </div>

            <div class="footer-column">
                <h3>e Doc</h3>
                <ul>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="DoctorAppointment.jsp">Appointments</a></li>
                    <li><a href="#">Doctors</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
                
            </div>

            <div class="footer-column">
                <h3>More</h3>
                <ul>
                    <li><a href="#help">Help</a></li>
                    <li><a href="#tnc">Terms & Conditions</a></li>
                    <li><a href="#privacy">Privacy Policy</a></li>
                    <li><a href="#career">Career</a></li>
                    <li><a href="#fnq">F&Q</a></li>
                </ul>
            </div>

            <div class="footer-column">
                <h3>Contact Us</h3>
                <ul>
                    <li><img class="social" id="social" src="Image/fb.jpg" alt="fb">
                    <img class="social" id="social" src="Image/instagram.jpg" alt="fb">
                    <img class="social" id="social" src="Image/youtube.jpg" alt="fb">
                    <img class="social" id="social" src="Image/linkedin.jpg" alt="fb"></li>
                </ul>

                
                <h4>Phone Numbers :</h4>
                <ul>
                    <li>+94 11 7654321</li>
                    <li>+94 11 123456</li>
                </ul>
                <h4>Email :</h4>
                <ul>
                    <li>contactus@arogya.com</li>
                    
                </ul>



            </div>
        </div>
    </footer>
</body>
</html>
