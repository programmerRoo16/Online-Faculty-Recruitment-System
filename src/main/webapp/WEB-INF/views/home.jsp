<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome - Faculty Recruitment</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        /* --- CSS Variables --- */
        :root {
            --primary-color: #4F46E5; /* Indigo */
            --primary-hover: #4338ca;
            --secondary-color: #64748B; /* Slate Gray */
            --background-overlay: rgba(241, 245, 249, 0.92);
            --white: #ffffff;
            --text-dark: #1E293B;
            --border-color: #E2E8F0;
            --success: #10B981;
            --admin-color: #BE123C;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', sans-serif;
        }

        body {
            background-image: url('https://images.unsplash.com/photo-1541339907198-e08756dedf3f?q=80&w=2070&auto=format&fit=crop');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
            position: relative;
        }

        body::before {
            content: '';
            position: absolute; top: 0; left: 0; right: 0; bottom: 0;
            background-color: var(--background-overlay);
            z-index: -1;
            backdrop-filter: blur(3px);
        }

        /* --- Landing Container (Made Narrower) --- */
        .landing-container {
            width: 100%;
            max-width: 900px; /* Reduced from 1100px */
            text-align: center;
            z-index: 1;
        }

        .header-section {
            margin-bottom: 30px; /* Reduced from 50px */
        }

        .logo-icon {
            font-size: 36px; /* Reduced from 48px */
            color: var(--primary-color);
            margin-bottom: 15px;
            display: inline-block;
            background: var(--white);
            padding: 15px; /* Reduced from 20px */
            border-radius: 50%;
            box-shadow: 0 5px 15px -3px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: var(--text-dark);
            font-size: 2.2rem; /* Reduced from 2.75rem */
            font-weight: 800;
            margin-bottom: 8px;
            letter-spacing: -0.025em;
        }

        .tagline {
            color: var(--secondary-color);
            font-size: 1rem; /* Reduced from 1.2rem */
            max-width: 600px;
            margin: 0 auto;
            line-height: 1.5;
            font-weight: 500;
        }

        /* --- Action Cards Grid (Tighter Gap) --- */
        .role-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); /* Reduced min-width */
            gap: 20px; /* Reduced gap from 35px */
            margin-top: 25px;
        }

        /* --- Updated Card Styling --- */
        .role-card {
            background: var(--white);
            border: 1px solid var(--border-color);
            border-radius: 16px;
            padding: 0; 
            text-decoration: none;
            transition: all 0.3s ease;
            display: flex;
            flex-direction: column;
            position: relative;
            overflow: hidden;
            box-shadow: 0 2px 4px -1px rgba(0, 0, 0, 0.08);
        }

        .role-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 20px -5px rgba(0, 0, 0, 0.1);
        }

        /* Reduced Image Header Height */
        .card-img-header {
            height: 70px; /* Reduced from 100px */
            width: 100%;
            background-size: cover;
            background-position: center;
            position: relative;
        }
        
        .card-img-header::after {
            content: '';
            position: absolute; top: 0; left: 0; right: 0; bottom: 0;
            opacity: 0.7;
        }

        /* Images */
        .role-card.candidate .card-img-header { background-image: url('https://images.unsplash.com/photo-1523240795612-9a054b0db644?q=80&w=800&auto=format&fit=crop'); }
        .role-card.candidate .card-img-header::after { background: linear-gradient(to bottom right, var(--primary-color), #818cf8); }

        .role-card.recruiter .card-img-header { background-image: url('https://images.unsplash.com/photo-1557804506-669a67965ba0?q=80&w=800&auto=format&fit=crop'); background-position: top center; }
        .role-card.recruiter .card-img-header::after { background: linear-gradient(to bottom right, var(--success), #34d399); }

        .role-card.admin .card-img-header { background-image: url('https://images.unsplash.com/photo-1558494949-ef010cbdcc31?q=80&w=800&auto=format&fit=crop'); }
        .role-card.admin .card-img-header::after { background: linear-gradient(to bottom right, var(--admin-color), #fb7185); }


        /* Wrapper for card text content (Reduced padding) */
        .card-content {
            padding: 20px 20px 25px 20px; /* Reduced from 30px */
            display: flex;
            flex-direction: column;
            align-items: center;
            flex-grow: 1;
        }

        /* Smaller Icon */
        .card-icon {
            width: 50px; /* Reduced from 64px */
            height: 50px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px; /* Reduced from 28px */
            margin-bottom: 15px;
            background-color: var(--white);
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
            margin-top: -45px; /* Adjusted negative margin */
            z-index: 2;
            position: relative;
            transition: transform 0.3s ease;
        }
        
        .role-card:hover .card-icon { transform: scale(1.1); }

        .role-title {
            font-size: 1.15rem; /* Reduced from 1.35rem */
            font-weight: 700;
            color: var(--text-dark);
            margin-bottom: 8px;
        }

        .role-desc {
            color: var(--secondary-color);
            font-size: 0.85rem; /* Reduced from 0.95rem */
            line-height: 1.5;
            margin-bottom: 20px;
            text-align: center;
        }

        .action-link {
            margin-top: auto;
            font-weight: 600;
            font-size: 0.85rem; /* Reduced size */
            display: flex;
            align-items: center;
            gap: 6px;
        }

        /* Themes */
        .role-card.candidate .card-icon, .role-card.candidate .action-link { color: var(--primary-color); }
        .role-card.candidate:hover { border-color: var(--primary-color); }

        .role-card.recruiter .card-icon, .role-card.recruiter .action-link { color: var(--success); }
        .role-card.recruiter:hover { border-color: var(--success); }

        .role-card.admin .card-icon, .role-card.admin .action-link { color: var(--admin-color); }
        .role-card.admin:hover { border-color: var(--admin-color); }

        /* --- Footer --- */
        .footer-note {
            margin-top: 40px; /* Reduced from 60px */
            color: var(--secondary-color);
            font-size: 0.8rem;
        }
        
        @media (max-width: 768px) {
            h1 { font-size: 1.75rem; }
            .role-grid { max-width: 400px; margin-left: auto; margin-right: auto; }
        }

    </style>
</head>
<body>

    <div class="landing-container">
        
        <div class="header-section">
            <div class="logo-icon">
                <i class="fa-solid fa-university"></i>
            </div>
            <h1>Faculty Recruitment System</h1>
            <p class="tagline">The premium platform connecting top academic talent with the world's leading institutions.</p>
        </div>

        <div class="role-grid">
            
            <a href="index" class="role-card candidate">
                <div class="card-img-header"></div>
                <div class="card-content">
                    <div class="card-icon">
                        <i class="fa-solid fa-user-graduate"></i>
                    </div>
                    <h2 class="role-title">Candidate</h2>
                    <p class="role-desc">Looking for a position? Register here to browse vacancies and track applications.</p>
                    <div class="action-link">
                        Proceed <i class="fa-solid fa-arrow-right"></i>
                    </div>
                </div>
            </a>

            <a href="recruiterRegistration" class="role-card recruiter">
                <div class="card-img-header"></div>
                <div class="card-content">
                    <div class="card-icon">
                        <i class="fa-solid fa-briefcase"></i>
                    </div>
                    <h2 class="role-title">Recruiter</h2>
                    <p class="role-desc">Hiring talent? Register your institution to post vacancies and manage candidates.</p>
                    <div class="action-link">
                        Proceed <i class="fa-solid fa-arrow-right"></i>
                    </div>
                </div>
            </a>

            <a href="adminLogin" class="role-card admin">
                <div class="card-img-header"></div>
                <div class="card-content">
                    <div class="card-icon">
                        <i class="fa-solid fa-shield-halved"></i>
                    </div>
                    <h2 class="role-title">Administrator</h2>
                    <p class="role-desc">System administrators login here to manage users and system reports.</p>
                    <div class="action-link">
                        Login <i class="fa-solid fa-arrow-right"></i>
                    </div>
                </div>
            </a>

        </div>

        <div class="footer-note">
            &copy; 2023 Faculty Recruitment System. All rights reserved.
        </div>
    </div>

</body>
</html>