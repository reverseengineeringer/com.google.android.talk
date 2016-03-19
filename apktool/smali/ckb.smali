.class final Lckb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[Lcny;
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Lcny;

    const/4 v1, 0x0

    new-instance v2, Lckc;

    invoke-direct {v2, p0}, Lckc;-><init>(Lckb;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public b()[Lcnz;
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Lcnz;

    const/4 v1, 0x0

    new-instance v2, Lckd;

    invoke-direct {v2, p0}, Lckd;-><init>(Lckb;)V

    aput-object v2, v0, v1

    return-object v0
.end method
