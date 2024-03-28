import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MaterialApp(home: CreateEventForm()));

class CreateEventForm extends StatefulWidget {
  @override
  _CreateEventFormState createState() => _CreateEventFormState();
}

class _CreateEventFormState extends State<CreateEventForm> {
  // Controllers for text fields
  final eventNameController = TextEditingController();
  final eventDescriptionController = TextEditingController();
  final locationController = TextEditingController();
  final transportationOptionsController = TextEditingController();
  final durationController = TextEditingController();
  final accessibilityFeaturesController = TextEditingController();
  final activityDetailsController = TextEditingController();
  final participantCapacityController = TextEditingController();
  final costController = TextEditingController();
  final registrationDetailsController = TextEditingController();
  final contactPersonController = TextEditingController();
  final dressCodeController = TextEditingController();
  final specialGuestsController = TextEditingController();
  final covidMeasuresController = TextEditingController();
  final sponsorshipsController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  // Placeholder function for image picker
  Future<void> pickImage() async {
    // Implement your image picking logic here
    // For example, using the image_picker package
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: pickImage,
              child: Text('Pick Event Image'),
            ),
            _buildTextField(eventNameController, 'Event Name'),
            _buildTextField(eventDescriptionController, 'Event Description'),
            ListTile(
              title: Text('Date and Time: ${DateFormat.yMd().add_jm().format(selectedDate)}'),
              trailing: Icon(Icons.calendar_today),
              onTap: () async {
                final picked = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2025),
                );
                if (picked != null && picked != selectedDate) {
                  setState(() {
                    selectedDate = picked;
                  });
                }
              },
            ),
            _buildTextField(locationController, 'Location'),
            _buildTextField(transportationOptionsController, 'Transportation Options'),
            _buildTextField(durationController, 'Duration'),
            _buildTextField(accessibilityFeaturesController, 'Accessibility Features'),
            _buildTextField(activityDetailsController, 'Activity Details'),
            _buildTextField(participantCapacityController, 'Participant Capacity'),
            _buildTextField(costController, 'Cost'),
            _buildTextField(registrationDetailsController, 'Registration Details'),
            _buildTextField(contactPersonController, 'Contact Person'),
            _buildTextField(dressCodeController, 'Dress Code'),
            _buildTextField(specialGuestsController, 'Special Guests or Speakers'),
            _buildTextField(covidMeasuresController, 'COVID-19 Measures'),
            _buildTextField(sponsorshipsController, 'Sponsorship or Partner Organizations'),
            ElevatedButton(
              onPressed: () {
                // Implement your form submission logic here
              },
              child: Text('Submit Event'),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber, // Background color
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
