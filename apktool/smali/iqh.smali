.class final Liqh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Liqi;

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Liqh;->a:Liqi;

    .line 65
    iput-boolean v1, p0, Liqh;->b:Z

    .line 66
    iput-boolean v1, p0, Liqh;->c:Z

    .line 68
    return-void
.end method
