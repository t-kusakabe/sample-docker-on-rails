import { createStore as reduxCreateStore, applyMiddleware, combineReducers } from 'redux';
import logger from 'redux-logger';

const createStore = () => {
    return reduxCreateStore(
        combineReducers({
            // Reducer
        }),
        applyMiddleware(
            logger,
        )
    );
};

export default createStore;
