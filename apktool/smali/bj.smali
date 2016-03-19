.class final Lbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lbh;


# direct methods
.method constructor <init>(Lbh;II)V
    .locals 1

    .prologue
    .line 610
    iput-object p1, p0, Lbj;->c:Lbh;

    iput p2, p0, Lbj;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lbj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 612
    iget-object v0, p0, Lbj;->c:Lbh;

    iget-object v1, p0, Lbj;->c:Lbh;

    iget-object v1, v1, Lbh;->o:Lbf;

    iget v1, p0, Lbj;->a:I

    iget v2, p0, Lbj;->b:I

    invoke-virtual {v0, v1, v2}, Lbh;->a(II)Z

    .line 613
    return-void
.end method
