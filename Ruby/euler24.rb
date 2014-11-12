# euler24.rb
# Little slow, but it works. Really should have figured this out by hand. Would
# have been better for my brain, but the easy way out is fun sometimes.
p (0..9).to_a.permutation.to_a[1e6 - 1]