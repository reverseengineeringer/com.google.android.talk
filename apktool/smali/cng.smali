.class final Lcng;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcmv;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcnh;

    invoke-direct {v0, p0}, Lcnh;-><init>(Lcng;)V

    return-object v0
.end method

.method public b()[Lcjp;
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Lcjp;

    const/4 v1, 0x0

    new-instance v2, Lcni;

    invoke-direct {v2, p0}, Lcni;-><init>(Lcng;)V

    aput-object v2, v0, v1

    return-object v0
.end method
