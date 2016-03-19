.class final Lhcz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:I

.field final c:Lhli;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhli",
            "<",
            "Lhdd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lhcz;->b:I

    .line 111
    new-instance v0, Lhli;

    const/16 v1, 0x4b0

    invoke-direct {v0, v1}, Lhli;-><init>(I)V

    iput-object v0, p0, Lhcz;->c:Lhli;

    .line 112
    return-void
.end method
