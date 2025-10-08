<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps Job Application</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
        :root {
            --facebook-blue: #1877f2;
            --facebook-blue-hover: #166fe5;
            --facebook-green: #42b72a;
            --facebook-green-hover: #36a420;
            --facebook-gray: #f0f2f5;
            --facebook-dark-gray: #8a8d91;
            --facebook-border: #dddfe2;
            --facebook-text: #1c1e21;
        }
        
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        
        body {
            font-family: 'Roboto', Helvetica, Arial, sans-serif;
            background-color: var(--facebook-gray);
            color: var(--facebook-text);
            line-height: 1.34;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        
        .container {
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
        }
        
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        
        .header h1 {
            color: var(--facebook-blue);
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 10px;
        }
        
        .header p {
            color: var(--facebook-dark-gray);
            font-size: 16px;
            margin-bottom: 5px;
        }
        
        .form-container {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, .1), 0 8px 16px rgba(0, 0, 0, .1);
            padding: 20px;
            margin-bottom: 20px;
        }
        
        .form-section {
            margin-bottom: 20px;
            padding-bottom: 15px;
            border-bottom: 1px solid var(--facebook-border);
        }
        
        .form-section:last-child {
            border-bottom: none;
        }
        
        .section-title {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 15px;
            color: var(--facebook-blue);
        }
        
        .form-row {
            display: flex;
            flex-wrap: wrap;
            margin: 0 -10px;
        }
        
        .form-group {
            flex: 1 0 50%;
            padding: 0 10px;
            margin-bottom: 15px;
            min-width: 250px;
        }
        
        .form-group.full-width {
            flex: 1 0 100%;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            font-size: 14px;
        }
        
        .required::after {
            content: " *";
            color: #e41e3f;
        }
        
        input, select, textarea {
            width: 100%;
            padding: 11px;
            border: 1px solid var(--facebook-border);
            border-radius: 6px;
            font-size: 15px;
            background-color: var(--facebook-gray);
            transition: border-color 0.2s;
        }
        
        input:focus, select:focus, textarea:focus {
            border-color: var(--facebook-blue);
            outline: none;
            background-color: white;
        }
        
        .phone-input-container {
            position: relative;
        }
        
        .phone-prefix {
            position: absolute;
            left: 12px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--facebook-dark-gray);
            font-weight: 500;
            z-index: 1;
        }
        
        .phone-input-container input {
            padding-left: 35px;
        }
        
        .validation-message {
            font-size: 12px;
            margin-top: 5px;
            display: none;
        }
        
        .valid-message {
            color: var(--facebook-green);
        }
        
        .invalid-message {
            color: #e41e3f;
        }
        
        input.valid {
            border-color: var(--facebook-green);
        }
        
        input.invalid {
            border-color: #e41e3f;
        }
        
        .radio-group {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
        }
        
        .radio-option {
            display: flex;
            align-items: center;
        }
        
        .radio-option input {
            width: auto;
            margin-right: 8px;
        }
        
        .file-input-container {
            display: flex;
            gap: 10px;
            align-items: center;
        }
        
        .file-input-container input[type="text"] {
            flex: 1;
        }
        
        .file-input-container input[type="file"] {
            flex: 1;
            padding: 8px;
        }
        
        .submit-btn {
            background-color: var(--facebook-blue);
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 18px;
            font-weight: 600;
            padding: 12px 20px;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.2s;
        }
        
        .submit-btn:hover {
            background-color: var(--facebook-blue-hover);
        }
        
        .footer {
            text-align: center;
            color: var(--facebook-dark-gray);
            font-size: 14px;
            margin-top: 20px;
        }
        
        @media (max-width: 600px) {
            .form-group {
                flex: 1 0 100%;
            }
            
            .file-input-container {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>DevOps Careers</h1>
            <p>Join our team of innovative engineers building the future of technology</p>
            <p>Complete the form below and we'll get back to you shortly</p>
        </div>
        
        <div class="form-container">
            <form id="jobApplicationForm">
                <!-- Personal Information Section -->
                <div class="form-section">
                    <h2 class="section-title">Personal Information</h2>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="firstName" class="required">First Name</label>
                            <input type="text" id="firstName" name="firstName" placeholder="Enter your first name" required>
                        </div>
                        <div class="form-group">
                            <label for="lastName" class="required">Last Name</label>
                            <input type="text" id="lastName" name="lastName" placeholder="Enter your last name" required>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group">
                            <label for="email" class="required">Email Address</label>
                            <input type="email" id="email" name="email" placeholder="your.email@example.com" required>
                        </div>
                        <div class="form-group">
                            <label for="phone" class="required">Phone Number</label>
                            <div class="phone-input-container">
                                <span class="phone-prefix">+1</span>
                                <input type="tel" id="phone" name="phone" placeholder="(555) 123-4567" maxlength="14" required>
                                <div class="validation-message valid-message">✓ Valid phone number</div>
                                <div class="validation-message invalid-message">✗ Please enter a valid 10-digit phone number</div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Position Information Section -->
                <div class="form-section">
                    <h2 class="section-title">Position Information</h2>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="position" class="required">Desired Position</label>
                            <select id="position" name="position" required>
                                <option value="" disabled selected>Select a position</option>
                                <option value="senior-devops">Senior DevOps Engineer</option>
                                <option value="cloud-engineer">Cloud Infrastructure Engineer</option>
                                <option value="site-reliability">Site Reliability Engineer</option>
                                <option value="devops-manager">DevOps Team Lead</option>
                                <option value="automation-specialist">Automation Specialist</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="startDate" class="required">Available Start Date</label>
                            <input type="date" id="startDate" name="startDate" required>
                        </div>
                    </div>
                    
                    <div class="form-group full-width">
                        <label class="required">Current Employment Status</label>
                        <div class="radio-group">
                            <div class="radio-option">
                                <input type="radio" id="employed" name="employmentStatus" value="employed" required>
                                <label for="employed">Employed</label>
                            </div>
                            <div class="radio-option">
                                <input type="radio" id="self-employed" name="employmentStatus" value="self-employed">
                                <label for="self-employed">Self-Employed</label>
                            </div>
                            <div class="radio-option">
                                <input type="radio" id="unemployed" name="employmentStatus" value="unemployed">
                                <label for="unemployed">Unemployed</label>
                            </div>
                            <div class="radio-option">
                                <input type="radio" id="student" name="employmentStatus" value="student">
                                <label for="student">Student</label>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Resume Section -->
                <div class="form-section">
                    <h2 class="section-title">Resume Submission</h2>
                    <div class="form-group full-width">
                        <label for="resumeUrl">Resume URL (LinkedIn, GitHub, Portfolio)</label>
                        <input type="text" id="resumeUrl" name="resumeUrl" placeholder="https://linkedin.com/in/yourprofile">
                    </div>
                    
                    <div class="form-group full-width">
                        <label for="resumeFile">Or Upload Resume File</label>
                        <input type="file" id="resumeFile" name="resumeFile" accept=".pdf,.doc,.docx">
                    </div>
                </div>
                
                <!-- Additional Information Section -->
                <div class="form-section">
                    <h2 class="section-title">Additional Information</h2>
                    <div class="form-group full-width">
                        <label>Would you like to provide references?</label>
                        <div class="radio-group">
                            <div class="radio-option">
                                <input type="radio" id="references-yes" name="references" value="yes">
                                <label for="references-yes">Yes, I can provide references</label>
                            </div>
                            <div class="radio-option">
                                <input type="radio" id="references-no" name="references" value="no">
                                <label for="references-no">No, not at this time</label>
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group full-width">
                        <label for="additionalInfo">Additional Information (Optional)</label>
                        <textarea id="additionalInfo" name="additionalInfo" rows="4" placeholder="Tell us anything else you'd like us to know about your application..."></textarea>
                    </div>
                </div>
                
                <!-- Submit Button -->
                <button type="submit" class="submit-btn">Submit Application</button>
            </form>
        </div>
        
        <div class="footer">
            <h3>We value your privacy. Your information will only be used for recruitment purposes.</h3>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const phoneInput = document.getElementById('phone');
            const validMessage = document.querySelector('.valid-message');
            const invalidMessage = document.querySelector('.invalid-message');
            const form = document.getElementById('jobApplicationForm');
            
            // Format phone number as user types
            phoneInput.addEventListener('input', function(e) {
                // Remove all non-digit characters
                let value = e.target.value.replace(/\D/g, '');
                
                // Format the phone number
                if (value.length > 0) {
                    if (value.length <= 3) {
                        value = '(' + value;
                    } else if (value.length <= 6) {
                        value = '(' + value.substring(0, 3) + ') ' + value.substring(3);
                    } else {
                        value = '(' + value.substring(0, 3) + ') ' + value.substring(3, 6) + '-' + value.substring(6, 10);
                    }
                }
                
                e.target.value = value;
                
                // Validate the input
                validatePhoneNumber(e.target.value);
            });
            
            // Validate on blur
            phoneInput.addEventListener('blur', function(e) {
                validatePhoneNumber(e.target.value);
            });
            
            // Validate on form submission
            form.addEventListener('submit', function(e) {
                if (!validatePhoneNumber(phoneInput.value)) {
                    e.preventDefault();
                    alert('Please enter a valid 10-digit phone number');
                    phoneInput.focus();
                } else {
                    e.preventDefault();
                    alert('Thank you for your application! We will review it and get back to you soon.');
                    form.reset();
                }
            });
            
            function validatePhoneNumber(value) {
                // Remove formatting characters to check if we have only digits
                const digitsOnly = value.replace(/\D/g, '');
                
                // Check if we have exactly 10 digits (US phone number)
                if (digitsOnly.length === 10) {
                    phoneInput.classList.remove('invalid');
                    phoneInput.classList.add('valid');
                    validMessage.style.display = 'block';
                    invalidMessage.style.display = 'none';
                    return true;
                } else {
                    phoneInput.classList.remove('valid');
                    phoneInput.classList.add('invalid');
                    validMessage.style.display = 'none';
                    invalidMessage.style.display = 'block';
                    return false;
                }
            }
        });
    </script>
</body>
</html>
