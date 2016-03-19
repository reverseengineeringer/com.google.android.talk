.class public Ldqq;
.super Ldrq;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Lmgb;)V
    .locals 0

    .prologue
    .line 5505
    invoke-direct {p0, p1}, Ldrq;-><init>(Lmgb;)V

    .line 4667
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 4671
    if-eqz p0, :cond_0

    .line 4672
    new-instance v0, Lmgb;

    invoke-direct {v0}, Lmgb;-><init>()V

    .line 6131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4673
    check-cast v0, Lmgb;

    .line 4674
    if-eqz v0, :cond_0

    .line 4675
    new-instance v1, Ldqq;

    invoke-direct {v1, v0}, Ldqq;-><init>(Lmgb;)V

    move-object v0, v1

    .line 4679
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 0

    .prologue
    .line 4686
    invoke-super {p0, p1, p2}, Ldrq;->a(Lbfz;Ldyy;)V

    .line 4687
    return-void
.end method
