always @(*) begin
    // Default next state assignment
    next_state = IDLE;

    case (state)
        IDLE: begin
                if (input_signal)
                  next_state = STATE_1; // Transition to STATE_1 on input_signal
              end

        STATE_1:  begin
                    if (!input_signal)
                      next_state = STATE_2; // Transition to STATE_2 if input_signal is low
                  end

        STATE_2:  next_state = IDLE; // Transition back to IDLE
        default:  next_state = IDLE; // Fallback to default state
    endcase
end
