.class public final Ldxs;
.super Ldxu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldxu",
        "<",
        "Ldmw;",
        "Ldqq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILdxv;)V
    .locals 1

    .prologue
    .line 197
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->sS:I

    invoke-direct {p0, p1, p2, p3, v0}, Ldxu;-><init>(Landroid/content/Context;ILdxv;I)V

    .line 198
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Ldxs;->d:I

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f(I)I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ldmw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    const-class v0, Ldmw;

    return-object v0
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ldqq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    const-class v0, Ldqq;

    return-object v0
.end method
