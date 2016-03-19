.class public Lekh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lhpz;

.field private final b:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-class v0, Lhpz;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lekh;->a:Lhpz;

    .line 45
    invoke-static {p1}, Lijs;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lekh;->b:Landroid/content/SharedPreferences;

    .line 46
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 124
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lekh;->a:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "LAST_CALL_LOCAL_SESSION"

    .line 126
    invoke-virtual {v0, v1, p2}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "LAST_CALL_LOGS_PATH"

    .line 127
    invoke-virtual {v0, v1, p3}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "LAST_CALL_START_TIME"

    .line 128
    invoke-virtual {v0, v1, p4, p5}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lhqc;->d()I

    .line 131
    :cond_0
    iget-object v0, p0, Lekh;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_CALL_LOCAL_SESSION"

    .line 132
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_CALL_LOGS_PATH"

    .line 133
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_CALL_START_TIME"

    .line 134
    invoke-interface {v0, v1, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    return-void
.end method

.method public a(I)Z
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lekh;->a:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "improve_hangouts_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(IIJ)Z
    .locals 11

    .prologue
    .line 63
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 64
    iget-object v0, p0, Lekh;->b:Landroid/content/SharedPreferences;

    const-string v1, "THROTTLED_IMPRESSIONS"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    const-wide/16 v4, -0x1

    .line 70
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 74
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const-wide/16 v2, -0x1

    :try_start_1
    invoke-virtual {v1, v6, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v2

    move-object v0, v1

    .line 83
    :goto_1
    const/4 v1, 0x0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    .line 85
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 86
    :cond_0
    const/4 v1, 0x1

    .line 88
    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 90
    const-string v2, "Babel"

    const-string v3, "JSON for throttles is created for account %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 90
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v7}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_1
    add-long v2, v4, p3

    .line 95
    :try_start_2
    invoke-virtual {v0, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    const/4 v4, -0x1

    if-ne p1, v4, :cond_3

    .line 97
    iget-object v4, p0, Lekh;->b:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "THROTTLED_IMPRESSIONS"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    .line 107
    :goto_2
    return v0

    .line 66
    :cond_2
    iget-object v0, p0, Lekh;->a:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "THROTTLED_IMPRESSIONS"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_3
    const-string v2, "Babel"

    const-string v3, "JSON for throttles: [[%s]] failed to parse"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    move-wide v2, v4

    goto :goto_1

    .line 99
    :cond_3
    :try_start_3
    iget-object v4, p0, Lekh;->a:Lhpz;

    invoke-interface {v4, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v4

    const-string v5, "THROTTLED_IMPRESSIONS"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lhqc;->d()I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v1

    .line 105
    goto :goto_2

    .line 103
    :catch_1
    move-exception v0

    const-string v0, "Babel"

    const-string v4, "JSON for throttles failed to put %d to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 104
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v7

    const/4 v2, 0x1

    aput-object v6, v5, v2

    .line 103
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v0, v1

    goto :goto_2

    .line 78
    :catch_2
    move-exception v2

    goto :goto_3

    :cond_5
    move-object v0, v2

    move-wide v2, v4

    goto/16 :goto_1
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lekh;->a:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "improve_hangouts_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 54
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 115
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lekh;->a:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "THROTTLED_IMPRESSIONS"

    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 118
    :cond_0
    iget-object v0, p0, Lekh;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "THROTTLED_IMPRESSIONS"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    return-void
.end method

.method public d(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string v0, ""

    .line 147
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v0, p0, Lekh;->b:Landroid/content/SharedPreferences;

    const-string v1, "LAST_CALL_LOCAL_SESSION"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    return-object v0

    .line 144
    :cond_1
    iget-object v0, p0, Lekh;->a:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "LAST_CALL_LOCAL_SESSION"

    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string v0, ""

    .line 158
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v0, p0, Lekh;->b:Landroid/content/SharedPreferences;

    const-string v1, "LAST_CALL_LOGS_PATH"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_0
    return-object v0

    .line 155
    :cond_1
    iget-object v0, p0, Lekh;->a:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "LAST_CALL_LOGS_PATH"

    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f(I)J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 168
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    move-wide v0, v2

    .line 173
    :goto_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 174
    iget-object v0, p0, Lekh;->b:Landroid/content/SharedPreferences;

    const-string v1, "LAST_CALL_START_TIME"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 175
    :cond_0
    return-wide v0

    .line 169
    :cond_1
    iget-object v0, p0, Lekh;->a:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "LAST_CALL_START_TIME"

    invoke-interface {v0, v1, v2, v3}, Lhqb;->a(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method
