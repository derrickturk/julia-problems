function grad = delJ(X, y, theta)
    m = size(X, 1); % obs count

    % X :: m x (n + 1)
    % y :: m x 1
    % theta :: (n + 1) x 1

    % err :: m x 1
    err = X * theta - y;

    % grad :: (n + 1) x 1
    grad = (err' * X)' ./ m;
end


