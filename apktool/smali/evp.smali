.class final Levp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Levm;


# direct methods
.method constructor <init>(Levm;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Levp;->a:Levm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Levp;->a:Levm;

    .line 1096
    invoke-virtual {v0}, Levm;->getActivity()Lba;

    move-result-object v0

    check-cast v0, Lewh;

    .line 1097
    invoke-interface {v0}, Lewh;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Levq;

    .line 80
    invoke-interface {v0}, Levq;->h()V

    .line 81
    return-void
.end method
