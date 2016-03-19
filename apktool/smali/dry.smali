.class public Ldry;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4438
    invoke-direct {p0}, Ldqf;-><init>()V

    .line 4439
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 1

    .prologue
    .line 4444
    new-instance v0, Ldry;

    invoke-direct {v0}, Ldry;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 4

    .prologue
    .line 4450
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 4452
    iget-object v0, p0, Ldry;->b:Leff;

    check-cast v0, Ldpi;

    .line 4453
    iget-object v1, v0, Ldpi;->c:Ljava/lang/String;

    iget-wide v2, v0, Ldpi;->a:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfz;Ljava/lang/String;J)I

    .line 4458
    return-void
.end method
