.class public Ldmz;
.super Ldmt;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ldmt;-><init>()V

    .line 230
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Ldmv;

    invoke-direct {v0}, Ldmv;-><init>()V

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const-string v0, "users/@me/phones"

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method
