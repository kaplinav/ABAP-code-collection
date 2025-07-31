
class std_evt_hndl definition create private final .
  public section.
    " Class introduction
    " This class provides static methods for handling standard events
    " in an ABAP report. Each method represents a standard event and can
    " be used to implement logic associated with these events. The events
    " include INITIALIZATION, START-OF-SELECTION, END-OF-SELECTION, and more.

    " Static method for INITIALIZATION event
    class-methods handle_initialization
      " Detailed comments:
      " This method corresponds to the INITIALIZATION event in an ABAP report.
      " It is called before the selection screen is displayed for the first time.
      importing iv_message type string optional.

    " Static method for AT SELECTION-SCREEN event
    class-methods handle_at_selection_screen
      " Detailed comments:
      " This method corresponds to the AT SELECTION-SCREEN event in an ABAP report.
      " It is triggered after user input is validated on the selection screen.
      importing iv_message type string optional.

    " Static method for START-OF-SELECTION event
    class-methods handle_start_of_selection
      " Detailed comments:
      " This method corresponds to the START-OF-SELECTION event in an ABAP report.
      " It is the main processing block and is triggered after the selection screen is processed.
      importing iv_message type string optional.

    " Static method for END-OF-SELECTION event
    class-methods handle_end_of_selection
      " Detailed comments:
      " This method corresponds to the END-OF-SELECTION event in an ABAP report.
      " It is called after the main logic in START-OF-SELECTION is completed.
      importing iv_message type string optional.

    " Static method for TOP-OF-PAGE event
    class-methods handle_top_of_page
      " Detailed comments:
      " This method corresponds to the TOP-OF-PAGE event in an ABAP report.
      " It is triggered when a new page starts in a report's output.
      importing iv_message type string optional.

endclass. " std_evt_hndl

class std_evt_hndl implementation.

method handle_initialization.
  " Log the INITIALIZATION event and any message passed
  write: / 'INITIALIZATION Event Triggered'.

  if iv_message is not initial.
    write: / 'Message:', iv_message.
  endif.

endmethod.

METHOD handle_at_selection_screen.
  " Log the AT SELECTION-SCREEN event and any message passed
  write: / 'AT SELECTION-SCREEN Event Triggered'.

  if iv_message is not initial.
    write: / 'Message:', iv_message.
  endif.

endmethod.

method handle_start_of_selection.
  " Log the START-OF-SELECTION event and any message passed
  write: / 'START-OF-SELECTION Event Triggered'.

  if iv_message is not initial.
    write: / 'Message:', iv_message.
  endif.

endmethod.

method handle_end_of_selection.
  " Log the END-OF-SELECTION event and any message passed
  write: / 'END-OF-SELECTION Event Triggered'.

  if iv_message is not initial.
    write: / 'Message:', iv_message.
  endif.

endmethod.

method handle_top_of_page.
  " Log the TOP-OF-PAGE event and any message passed
  write: / 'TOP-OF-PAGE Event Triggered'.

  if iv_message is not initial.
    write: / 'Message:', iv_message.
  endif.

endmethod.
endclass. " std_evt_hndl


REPORT zexample_report.

START-OF-SELECTION.
  zcl_report_events=>handle_start_of_selection( iv_message = 'Processing data...' ).

END-OF-SELECTION.
  zcl_report_events=>handle_end_of_selection( iv_message = 'Processing completed.' ).
