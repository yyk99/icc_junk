//
//
//

#ifndef __TIMER_H
#define __TIMER_H

#include <chrono>

class Timer {
    std::chrono::time_point<std::chrono::system_clock> _start; // = chrono::high_resolution_clock::now();
    std::chrono::time_point<std::chrono::system_clock> _stop;   // = chrono::high_resolution_clock::now();

public:
    void start() {
        _start = std::chrono::high_resolution_clock::now();
    }

    void stop() {
        _stop = std::chrono::high_resolution_clock::now();
    }
    
    /// returns elapsed time in seconds
    double elapsed() const {
        return std::chrono::duration_cast<std::chrono::milliseconds>(_stop - _start).count() / 1000.;
    }
};

// Local Variables:
// mode: c++
// c-basic-offset: 4
// tab-width: 4
// indent-tabs-mode: nil
// End:

#endif
