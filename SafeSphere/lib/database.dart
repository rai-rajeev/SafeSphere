List<String> casual = [
  "Nose Bleeding",
  //"Food poisoning",
  "Alcohol poisoning",
  "Choking",
  //"Diarrhoea",
  "Flood",
  "Earthquakes",
  "Burns(minor to moderate)",
  "Anaphylaxis",
  "Heatstroke",
  "Electric shock",
  "Concussion",
  "Industrial accidents (for workers)",
  "Industrial accidents (for civilians)",
  "Snake bite",
  "Dog Attack",
  "Seizures"
];
Map<String,List<String>> image={
  "Nose Bleeding":['img.png','img_1.png'],
  "Choking":['img_2.png','img_3.png'],
  "Burns(minor to moderate)":['img_4.png','img_5.png'],
  "Anaphylaxis":['img_6.png','img_7.png'],
  "Heatstroke":['img_8.png','img_9.png'],
  "Electric shock":['img_10.png','img_11.png'],
  "Concussion":['img_12.png','img_13.png'],
  "Snake bite":['img_14.png','img_15.png'],
  "Dog Attack":['img_16.png','img_17.png'],
  "Seizures":['img_18.png','img_19.png'],
  "Alcohol poisoning":['img_20.png','img_21.png'],
  "Flood":['img_22.png','img_23.png'],
  "Earthquakes":['img_24.png','img_25.png'],
  "Industrial accidents (for workers)":['img_26.png','img_27.png','img_28.png'],
  "Industrial accidents (for civilians)":['img_29.png','img_30.png'],
};
Map<String, Map<String, List<List<String>>>> data = {
  "Nose Bleeding": {
    "Assessment": [
      [
        "Evaluate the Cause",
        "Determine if the nosebleed is due to an injury, high blood pressure, or if it's spontaneous"
      ],
      [
        "Check for Additional Injuries",
        "Ensure there are no other injuries, especially if the nosebleed resulted from trauma"
      ]
    ],
    "Best Practices": [
      [
        "Calm and Comfort",
        "Reassure the person and encourage them to stay calm"
      ],
      [
        "Position Properly",
        "Have the person sit upright and lean slightly forward",
        "Avoid tilting the head back to prevent blood from flowing down the throat"
      ],
      [
        "Apply Pressure",
        "Pinch the soft part of the nose just below the bridge with a clean cloth or tissue",
        "Maintain pressure for 5 to 10 minutes without checking to see if bleeding has stopped"
      ],
      [
        "Check and Continue if Necessary",
        "After 10 minutes, release the pressure gently to see if the bleeding has stopped",
        "If it hasn't, reapply pressure for another 10 minutes"
      ],
      [
        "Aftercare",
        "Once the bleeding stops, remind the person to avoid picking or blowing their nose, which can disturb clot formation"
      ]
    ],
    "Steps to Avoid": [
      [
        "Don’t Lean Back",
        "This can cause blood to flow down the throat, which can lead to coughing or vomiting"
      ],
      [
        "Avoid Strenuous Activity",
        "Physical activity can increase blood pressure and may cause the nose to start bleeding again"
      ],
      [
        "Don't Pack the Nose",
        "Avoid stuffing the nose with cotton or tissue, which can irritate the nasal passage and obstruct breathing"
      ],
      [
        "Don't Ignore Frequent Nosebleeds",
        "If nosebleeds are recurrent or accompanied by other symptoms like headache or dizziness, seek medical advice"
      ]
    ]
  },
  "Concussion": {
    "Assessment": [
      [
        "Observe for Concussion Symptoms",
        "Check for confusion, headache, dizziness, nausea, slurred speech, or loss of coordination",
        "Note any memory loss, especially about the event that caused the injury."
      ],
      [
        "Evaluate Responsiveness",
        "Gently ask simple questions to gauge their level of consciousness and awareness."
      ]
    ],
    "Best Practices": [
      [
        "Ensure Safety",
        "Move the person to a safe area if they are in danger of further injury, but avoid unnecessary movement, especially if there's a possibility of spinal injuries."
      ],
      [
        "Monitor Symptoms",
        "Keep a close watch on their condition. Symptoms can change or worsen over time."
      ],
      [
        "Seek Medical Attention",
        "Even if symptoms seem mild, it's crucial to get a professional medical evaluation as soon as possible."
      ],
      [
        "Keep the Person Awake and Alert",
        "While waiting for medical help, try to keep the person awake and engaged in conversation."
      ],
      [
        "Provide Comfort and Reassurance",
        "Stay calm and reassure the person. Comfort them without minimising their symptoms."
      ]
    ],
    "Steps to Avoid": [
      [
        "Don't Shake or Move Vigorously",
        "Avoid shaking or moving the person aggressively, especially if a spinal injury is suspected."
      ],
      [
        "No Food or Drink",
        "Do not give them food or drink until they've been medically assessed, as it could cause complications if surgery is needed."
      ],
      [
        "Avoid Self-Medication",
        "Don't administer over-the-counter pain medications as they can mask symptoms crucial for diagnosis."
      ]
    ],
  },
  "Snake Bite": {
    "Assessment": [
      [
        "Identify the Snake",
        "If possible, note the snake's appearance without approaching or risking another bite.",
        "Remember that not all snakes are venomous."
      ],
      [
        "Look for Bite Symptoms",
        "Check for one or more puncture marks, pain, swelling, redness, or bruising around the wound."
      ]
    ],
    "Best Practices": [
      [
        "Keep the Person Calm",
        "Reassure the person and keep them still. Minimise movement to slow the spread of venom."
      ],
      [
        "Position the Bite Below Heart Level",
        "Keep the affected area below the heart to reduce the flow of venom."
      ],
      [
        "Clean the Wound",
        "Gently wash the bite with soap and water if available."
      ],
      [
        "Immobilise the Affected Area",
        "Use a splint or sling to immobilise the affected limb, but do not restrict blood flow."
      ],
      [
        "Seek Medical Help Immediately",
        "Get the person to the nearest medical facility as soon as possible, especially if you suspect the snake is venomous."
      ]
    ],
    "Steps to Avoid": [
      [
        "Don't Try to Capture the Snake:",
        "It's unnecessary and could result in additional bites."
      ],
      [
        "Avoid Sucking Out the Venom",
        "This method is ineffective and can introduce bacteria to the wound."
      ],
      [
        "No Tourniquets",
        "Applying a tourniquet can cause more harm than good."
      ],
      [
        "Don't Ice the Wound",
        "Icing can cause tissue damage and slow down the removal of venom."
      ],
      [
        " Avoid Alcohol and Caffeine",
        "These can speed the body's absorption of venom."
      ],
    ]
  },
  "Dog Attack": {
    "Assessment": [
      [
        "Evaluate the Situation",
        "Quickly assess the aggressiveness of the dog and the severity of the attack."
            "Look for escape routes or barriers to separate the person from the dog."
      ]
    ],
    "Best Practices": [
      [
        "Protect the Victim",
        "If you can safely intervene, place something between the dog and the person being attacked, like a stick, backpack, or jacket.",
      ],
      [
        "Distract the Dog",
        "If the dog is not biting but is threatening, try to distract it with another object, like a ball or a loud noise."
      ],
      [
        "Stay Calm",
        "Encourage the victim to remain calm and still if the dog is not biting, as running or loud noises may further provoke the dog."
      ],
      [
        "Control and Secure the Dog (if possible)",
        "If you have control over the dog, securely leash it or confine it away from the victim."
      ],
      [
        "Seek Medical Attention",
        "After the attack, immediately seek medical help for the victim, even if the injuries seem minor, due to the risk of infections or rabies."
      ]
    ],
    "Steps to Avoid": [
      [
        "Don't Run or Scream",
        "These actions can trigger the dog's chase response."
      ],
      [
        "Avoid Eye Contact with the Dog",
        "Direct eye contact can be seen as a challenge or threat."
      ],
      [
        "Don't Attempt to Outrun the Dog",
        "Dogs can run significantly faster than humans and this may provoke a chase."
      ],
      [
        "Don't Leave Wounds Untreated",
        "Even minor bites can become infected. Always clean the wound and seek medical advice."
      ]
    ]
  },
  "Seizures": {
    "Assessment": [
      [
        "Identify Seizure Signs",
        "Look for uncontrollable jerking movements, loss of consciousness, or unusual behaviour.",
        "Check the duration of the seizure."
      ]
    ],
    "Best Practices": [
      [
        "Ensure Safety",
        "Clear the area around the person to prevent injury.",
        "Place something soft under their head."
      ],
      [
        "Position the Person",
        "Gently roll the person onto their side to keep the airway clear and allow any fluid to drain away."
      ],
      [
        "Stay Calm",
        "Reassure other bystanders and keep them at a safe distance.",
        "Stay with the person until the seizure stops naturally."
      ],
      ["Time the Seizure", "Note the time when the seizure starts and ends."],
      [
        "Seek Medical Help if Needed",
        "Call emergency services if the seizure lasts longer than 5 minutes, the person does not regain consciousness, or another seizure starts soon after the first.",
        "Seek immediate help if it's the person's first seizure or if they are injured during the seizure."
      ]
    ],
    "Steps to Avoid": [
      [
        "Don’t Restrain Movement",
        "Do not hold the person down or try to stop their movements."
      ],
      [
        "Avoid Mouth Insertions",
        "Never put anything in the person's mouth. This can cause injury or block the airway."
      ],
      [
        "Don't Offer Food or Water",
        "Do not give anything to eat or drink until the person is fully alert."
      ]
    ]
  },
  "Alcohol Poisoning": {
    "Assessment": [
      [
        "Identify Symptoms",
        "For alcohol poisoning, look for confusion, vomiting, seizures, slow breathing, irregular breathing, blue-tinged or pale skin, low body temperature, and unconsciousness.",
        "For drug overdose, symptoms can vary widely depending on the substance but may include similar symptoms to alcohol poisoning, along with dilated or pinpoint pupils, chest pain, and hallucinations."
      ],
      [
        "Check Responsiveness",
        "Gently shake the person and shout their name. Check if they are awake and responsive."
      ]
    ],
    "Best Practices": [
      [
        "Call for Emergency Help",
        "Dial emergency services immediately. Be ready to provide information about the substance taken, amount, and time of consumption if known."
      ],
      [
        "Ensure Safety and Comfort",
        "Clear the area of any dangers or harmful objects."
            "Keep the person warm and comfortable."
      ],
      [
        "Monitor Breathing and Responsiveness",
        "Continuously monitor the person's breathing and level of consciousness.",
        "If they are unconscious but breathing, place them in the recovery position (on their side, with the top leg and arm bent for support) to keep the airway clear and prevent choking."
      ],
      [
        "Provide Reassurance",
        "Stay with the person until help arrives. Talk to them calmly and reassuringly."
      ],
      [
        "Gather Information",
        "If possible, collect any remaining pills, bottles, or substances to give to the emergency responders for identification."
      ]
    ],
    "Steps to Avoid": [
      [
        "Don't Leave the Person Alone",
        "Stay with them until medical help arrives."
      ],
      [
        "Avoid Inducing Vomiting",
        "This can lead to choking or further harm to the person.",
      ],
      [
        "Don’t Give Food, Drinks, or Stimulants",
        "Avoid giving them anything by mouth including water, food, or stimulants like coffee as this can cause further complications."
      ],
      [
        "Don't Wait for Symptoms to Worsen",
        "Seek immediate medical help even if the person seems to be recovering."
      ]
    ]
  },
  "Flood": {
    "Assessment": [
      [
        "Evaluate the Risk",
        "Determine the immediate danger to yourself and others.",
        "Monitor water levels and the speed of rising water."
      ],
      [
        "Listen for Updates",
        "Stay updated with local news or weather reports for evacuation orders or safety instructions."
      ]
    ],
    "Best Practices": [
      [
        "Seek Higher Ground",
        "Move to higher levels in your home or evacuate to elevated areas away from water."
      ],
      [
        "Evacuate if Advised",
        "Leave immediately if evacuation orders are issued. Follow recommended evacuation routes."
      ],
      [
        "Secure Your Home",
        "If time allows, turn off utilities at the main switches, disconnect electrical appliances, and move valuables to higher levels."
      ],
      [
        "Prepare Emergency Kit",
        "Have a kit ready with water, food, medications, clothing, flashlights, and a portable radio."
      ],
      [
        "Stay Informed",
        "Listen to a battery-operated radio for updates and instructions from local officials",
      ]
    ],
    "Steps to Avoid": [
      [
        "Don't Walk or Swim in Floodwater",
        "As little as six inches of moving water can knock you down. Floodwater can also be contaminated or conceal dangerous debris."
      ],
      [
        "Don’t Drive Through Flooded Areas",
        "Vehicles can be swept away in just two feet of water. If floodwaters rise around your car, abandon the car and move to higher ground if you can do so safely."
      ],
      [
        "Avoid Electrical Equipment",
        "Don't touch electrical equipment if you are wet or standing in water."
      ],
      [
        "Don't Ignore Evacuation Orders",
        "Prioritise safety over property. If advised to evacuate, do so immediately."
      ]
    ]
  },
  "Earthquake": {
    "Assessment": [
      [
        "Identify Safe Areas",
        "Recognize spots away from windows, tall furniture, mirrors, and exterior walls.",
        "Identify sturdy pieces of furniture like desks or tables to take cover under."
      ]
    ],
    "Best Practices": [
      [
        "Drop, Cover, and Hold On",
        "Drop to your hands and knees to prevent being knocked over.",
        "Cover your head and neck (and your entire body if possible) under a sturdy table or desk."
            "Hold on to your shelter until the shaking stops."
      ],
      [
        "Stay Indoors",
        "If indoors, stay there. Going outside can put you at risk of falling debris."
      ],
      ["Stay Away from Windows", "Glass windows can shatter, causing injury."],
      [
        "If Outdoors, Move to a Clear Area",
        "Avoid buildings, trees, streetlights, and utility wires."
      ],
      [
        "If in a Vehicle",
        "Pull over to a clear location, stop, and stay there with your seatbelt fastened until the shaking stops."
      ]
    ],
    "Steps to Avoid": [
      ["Don’t Run Outside", "This may expose you to falling debris or glass."],
      [
        "Avoid Doorways",
        "Modern doorways are no stronger than any other part of a structure and do not provide protection from falling debris."
      ],
      [
        "Don’t Use Elevators",
        "Elevators may malfunction during an earthquake and after-shocks."
      ],
      [
        "Avoid Coastlines",
        "Earthquakes can trigger tsunamis. If you're near the coast, move to higher ground as a precaution against potential tsunamis.",
        "After the shaking stops, exit the building if safe, check yourself and others for injuries, and proceed to an open space away from damaged structures. Remember, aftershocks may follow, so stay vigilant and ready to take cover. By following these structured steps, bystanders can ensure safety during and immediately after an earthquake."
      ]
    ]
  },
  "Industrial Accidents (for workers)": {
    "Assessment": [
      [
        "Evaluate the Scene",
        "Quickly assess the nature and scale of the accident without compromising your own safety.",
        "Identify potential ongoing risks like fires, chemical spills, or unstable structures."
      ],
      [
        "Check for Injuries",
        "Determine the number of people involved and the severity of their injuries from a safe distance."
      ]
    ],
    "Best Practices": [
      [
        "Alert Emergency Services",
        "Immediately notify the facility’s emergency response team and call local emergency services.",
        "Provide specific details about the location and nature of the accident."
      ],
      [
        "Evacuate if Necessary",
        "Follow the facility's emergency evacuation procedures.",
        "Assist others in reaching designated safe areas or assembly points."
      ],
      [
        "Administer First Aid",
        "If you are trained, provide first aid to those injured. Prioritize life-threatening conditions like severe bleeding or asphyxiation."
      ],
      [
        "Secure the Area",
        "If safe to do so, contain the hazard by shutting off machinery or stopping leaks, but only if you’re trained and it’s safe to do so."
      ],
      [
        "Gather Information",
        "Collect relevant information about the accident for emergency services, including potential hazards, the number of casualties, and the nature of injuries."
      ],
      [
        "Communicate Effectively",
        "Use the facility's communication systems (like intercoms, radios, or alarms) to convey clear, concise information about the incident.",
        "Continuously update emergency services and coworkers about the situation as it evolves."
      ],
      [
        "Identify Hazards",
        "Clearly mark or verbally communicate specific hazards such as chemical spills, electrical dangers, or structural damage to first responders and coworkers."
      ],
      [
        "Preserve the Scene",
        "If safe, preserve the area of the incident for investigation purposes. Avoid disturbing any materials or equipment involved in the incident unless necessary for safety or rescue."
            "Support Evacuation Efforts"
      ],
      [
        "Assist in guiding coworkers to exits and assembly points, ensuring that everyone is accounted for.",
        "Check restrooms, offices, and hidden areas during evacuation to ensure no one is left behind."
      ],
      [
        "Use Safety Equipment",
        "Utilise available safety gear like hard hats, goggles, or masks to protect against ongoing risks, especially in cases of chemical exposure, smoke, or falling debris."
      ],
      [
        "Offer Psychological Support",
        "Be aware of the emotional shock and trauma that can occur. Offer a supportive presence and listen to those who need to talk about the incident.",
        "Encourage individuals to seek professional psychological support if necessary."
      ],
      [
        "Debrief and Document",
        "Once safe, participate in debriefing sessions to discuss the incident, what was done, and how similar incidents could be prevented or better managed in the future.",
        "Document your observations and actions taken during the incident for future training and improvements in safety protocols."
      ]
    ],
    "Steps to Avoid": [
      [
        "Don’t Act Beyond Your Training",
        "Only perform rescue or containment actions if you are trained and it is safe. Avoid worsening the situation."
      ],
      [
        "Avoid Unnecessary Movement:",
        "Don’t move injured individuals unless there’s an immediate risk (like fire or structural collapse), as this may exacerbate their injuries."
      ],
      [
        "Don't Ignore Safety Protocols",
        "Follow all established safety procedures and wear appropriate personal protective equipment if entering the accident area."
      ],
      [
        "Avoid Speculation or Panic",
        "Stay calm and avoid spreading unverified information that may lead to panic or confusion."
      ]
    ]
  },
  "Industrial Accidents (for civilians)": {
    "Assessment": [
      [
        "Determine the Hazard",
        "Understand the nature of the accident (chemical spill, explosion, fire) by observing signs or listening to official information."
      ],
      [
        "Evaluate Immediate Danger",
        "Assess whether the accident poses an immediate risk to your location (toxic fumes, fire spread).",
      ]
    ],
    "Best Practices": [
      [
        "Stay Informed",
        "Listen to local news, radio, or official online sources for updates and instructions."
            "Follow any evacuation or shelter-in-place orders immediately."
      ],
      [
        "Evacuate if Advised",
        "If evacuation orders are given, leave the area immediately using the suggested routes to avoid exposure to hazards.",
        "Take your emergency kit, essential documents, and medications with you."
      ],
      [
        "Shelter-in-Place if Required",
        "If advised to shelter-in-place, close all windows, doors, and ventilation systems.",
        "Seal gaps with tape or damp towels and stay in an interior room away from windows."
      ],
      [
        "Limit Exposure",
        "Use masks or cloth to cover your nose and mouth if there's smoke or chemical fumes.",
        "Avoid contact with any substances spilled or released due to the accident."
      ],
      [
        "Communicate with Family",
        "Let your family or emergency contact know your status and location if it's safe to do so."
      ]
    ],
    "Steps to Avoid": [
      [
        "Don’t Approach the Scene",
        "Stay away from the accident site to avoid hazards and interfering with first responders."
      ],
      [
        "Avoid Spreading Unverified Information",
        "Don't share information about the accident unless it's from a verified source to prevent panic or misinformation."
      ],
      [
        "Don't Ignore Official Instructions",
        "Follow the guidance of local authorities or emergency services promptly."
      ],
      [
        "Avoid Unnecessary Exposure",
        "Don't go outside or open windows to see what's happening if you're advised to shelter-in-place."
      ]
    ]
  }
};
