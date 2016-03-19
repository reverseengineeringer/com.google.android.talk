.class public Lcom/google/api/client/http/ExponentialBackOffPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/BackOffPolicy;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_INTERVAL_MILLIS:I = 0x1f4

.field public static final DEFAULT_MAX_ELAPSED_TIME_MILLIS:I = 0xdbba0

.field public static final DEFAULT_MAX_INTERVAL_MILLIS:I = 0xea60

.field public static final DEFAULT_MULTIPLIER:D = 1.5

.field public static final DEFAULT_RANDOMIZATION_FACTOR:D = 0.5


# instance fields
.field private final exponentialBackOff:Lirw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;

    invoke-direct {v0}, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/api/client/http/ExponentialBackOffPolicy;-><init>(Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;)V

    .line 131
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iget-object v0, p1, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lirx;

    invoke-virtual {v0}, Lirx;->a()Lirw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lirw;

    .line 140
    return-void
.end method

.method public static builder()Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;

    invoke-direct {v0}, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getCurrentIntervalMillis()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lirw;

    .line 1240
    iget v0, v0, Lirw;->c:I

    .line 215
    return v0
.end method

.method public final getElapsedTimeMillis()J
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lirw;

    invoke-virtual {v0}, Lirw;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInitialIntervalMillis()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lirw;

    .line 1221
    iget v0, v0, Lirw;->d:I

    .line 196
    return v0
.end method

.method public final getMaxElapsedTimeMillis()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lirw;

    .line 1268
    iget v0, v0, Lirw;->i:I

    .line 243
    return v0
.end method

.method public final getMaxIntervalMillis()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lirw;

    .line 1255
    iget v0, v0, Lirw;->g:I

    .line 230
    return v0
.end method

.method public final getMultiplier()D
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lirw;

    .line 1247
    iget-wide v0, v0, Lirw;->f:D

    .line 222
    return-wide v0
.end method

.method public getNextBackOffMillis()J
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lirw;

    invoke-virtual {v0}, Lirw;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRandomizationFactor()D
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lirw;

    .line 1233
    iget-wide v0, v0, Lirw;->e:D

    .line 208
    return-wide v0
.end method

.method public isBackOffRequired(I)Z
    .locals 1

    .prologue
    .line 156
    packed-switch p1, :pswitch_data_0

    .line 161
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 159
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lirw;

    invoke-virtual {v0}, Lirw;->b()V

    .line 170
    return-void
.end method
