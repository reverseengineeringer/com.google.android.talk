.class public final Lbqw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbmx;


# direct methods
.method constructor <init>(Lbmx;)V
    .locals 0

    .prologue
    .line 3172
    iput-object p1, p0, Lbqw;->a:Lbmx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lbqw;->a:Lbmx;

    .line 2041
    iget-object v0, v0, Lbmx;->c:Lbnc;

    .line 1175
    invoke-virtual {v0}, Lbnc;->c()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 2180
    iget-object v0, p0, Lbqw;->a:Lbmx;

    .line 3041
    iget-object v0, v0, Lbmx;->c:Lbnc;

    .line 2180
    invoke-virtual {v0}, Lbnc;->b()V

    .line 2181
    const/4 v0, 0x0

    return v0
.end method
