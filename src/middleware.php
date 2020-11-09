<?php

use Slim\App;

return function (App $app) {
    // e.g: $app->add(new \Slim\Csrf\Guard);
    /* $app->add(function ($request, $response, $next) {

        $key = $request->getQueryParam("key");

        if (!isset($key)) {
            return $response->withJson(["status" => "API Key required"], 401);
        }

        $sql = "SELECT * FROM user WHERE key2=:key2";
        $stmt = $this->db->prepare($sql);
        $stmt->execute([":key2" => $key]);

        if ($stmt->rowCount() > 0) {
            $result = $stmt->fetch();
            if ($key == $result["key2"]) {

                // update hit
                $sql = "UPDATE user SET hit=hit+1 WHERE key2=:key2";
                $stmt = $this->db->prepare($sql);
                $stmt->execute([":key2" => $key]);

                return $response = $next($request, $response);
            }
        }

        return $response->withJson(["status" => "Unauthorized"], 401);
    });*/ };
