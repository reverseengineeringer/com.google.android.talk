.class final Lhrn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Limg;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lhrl;


# direct methods
.method constructor <init>(Lhrl;Limg;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lhrn;->c:Lhrl;

    iput-object p2, p0, Lhrn;->a:Limg;

    iput-object p3, p0, Lhrn;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lhrn;->a:Limg;

    invoke-virtual {v0}, Limg;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lhrn;->a:Limg;

    invoke-virtual {v0}, Limg;->getActivity()Lba;

    move-result-object v0

    iget-object v1, p0, Lhrn;->a:Limg;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Lav;)Lilh;

    move-result-object v0

    const-class v1, Lhsc;

    .line 129
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsc;

    sget v1, Laal;->tA:I

    iget-object v2, p0, Lhrn;->b:Landroid/content/Intent;

    .line 130
    invoke-virtual {v0, v1, v2}, Lhsc;->a(ILandroid/content/Intent;)V

    .line 132
    :cond_0
    return-void
.end method
