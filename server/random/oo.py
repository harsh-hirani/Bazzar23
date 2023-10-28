import random

def generate_stock_chart(initial_value, num_steps, final_change, max_change_per_step):
    current_value = initial_value
    result_values = [current_value]
    
    for _ in range(num_steps - 1):
        # Generate a random change within bounds
        change = random.uniform(-max_change_per_step, max_change_per_step)
        
        # Ensure the change direction aligns with the final_change
        if (final_change - current_value) > 0 and change < 0:
            change = -change
        if (final_change - current_value) < 0 and change > 0:
            change = -change
        
        # Limit the change to stay within bounds
        if abs(change) > max_change_per_step:
            change = max_change_per_step if change > 0 else -max_change_per_step

        # Update the current value and store it
        current_value += change
        result_values.append(current_value)

    # Ensure the sum of changes equals the final change
    adjustment = final_change - result_values[-1]
    result_values[-1] += adjustment

    return result_values

# Example usage:
initial_value = 100
num_steps = 10
final_change = 50
max_change_per_step = 5

result = generate_stock_chart(initial_value, num_steps, final_change, max_change_per_step)
print("Modified Values:")
for i, value in enumerate(result):
    print(f"Step {i + 1}: {value}")
