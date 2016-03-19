.class final Ldiy;
.super Ldjc;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldiu;


# direct methods
.method constructor <init>(Ldiu;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Ldiy;->a:Ldiu;

    .line 1160
    invoke-direct {p0, p1}, Ldjc;-><init>(Ldiu;)V

    .line 283
    return-void
.end method


# virtual methods
.method a()Z
    .locals 6

    .prologue
    .line 286
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    .line 287
    iget-object v0, p0, Ldiy;->a:Ldiu;

    .line 2045
    iget-object v0, v0, Ldiu;->e:Landroid/content/Context;

    .line 288
    const-class v1, Lekq;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekq;

    iget-object v1, p0, Ldiy;->a:Ldiu;

    .line 3045
    iget v1, v1, Ldiu;->f:I

    .line 288
    invoke-virtual {v0, v1}, Lekq;->e(I)J

    move-result-wide v0

    .line 290
    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 291
    iget-object v2, p0, Ldiy;->a:Ldiu;

    .line 4045
    iget-object v2, v2, Ldiu;->d:Landroid/os/Handler;

    .line 291
    iget-object v3, p0, Ldiy;->a:Ldiu;

    .line 5045
    iget-object v3, v3, Ldiu;->i:Ljava/lang/Runnable;

    .line 292
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 293
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 291
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Lepa;
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v5, 0x1

    .line 301
    iget-object v0, p0, Ldiy;->a:Ldiu;

    .line 6045
    iget-object v0, v0, Ldiu;->e:Landroid/content/Context;

    .line 302
    const-class v1, Lekq;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekq;

    iget-object v1, p0, Ldiy;->a:Ldiu;

    .line 7045
    iget v1, v1, Ldiu;->f:I

    .line 302
    invoke-virtual {v0, v1}, Lekq;->e(I)J

    move-result-wide v0

    .line 7325
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 7326
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 7328
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 7329
    new-instance v4, Ljava/util/Date;

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 7331
    const-string v0, ""

    .line 7332
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 7333
    const/4 v0, 0x7

    .line 7334
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v3, v0, v5, v1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7338
    :cond_0
    iget-object v1, p0, Ldiy;->a:Ldiu;

    .line 8045
    iget-object v1, v1, Ldiu;->e:Landroid/content/Context;

    .line 7338
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 7340
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    :goto_0
    new-instance v1, Lepb;

    iget-object v2, p0, Ldiy;->a:Ldiu;

    .line 9045
    iget-object v2, v2, Ldiu;->e:Landroid/content/Context;

    .line 305
    invoke-direct {v1, v2}, Lepb;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Ldiy;->a:Ldiu;

    .line 10045
    iget-object v2, v2, Ldiu;->e:Landroid/content/Context;

    .line 306
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->gW:I

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lepb;->a(Ljava/lang/String;)Lepb;

    move-result-object v0

    iget-object v1, p0, Ldiy;->a:Ldiu;

    .line 11045
    iget-object v1, v1, Ldiu;->e:Landroid/content/Context;

    .line 307
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->gY:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lepb;->c(Ljava/lang/String;)Lepb;

    move-result-object v0

    new-instance v1, Ldiz;

    invoke-direct {v1, p0}, Ldiz;-><init>(Ldiy;)V

    .line 308
    invoke-virtual {v0, v1}, Lepb;->a(Leph;)Lepb;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lepb;->b()Lepa;

    move-result-object v0

    return-object v0

    .line 7340
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
