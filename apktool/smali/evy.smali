.class final Levy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Levx;


# direct methods
.method constructor <init>(Levx;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Levy;->a:Levx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Levy;->a:Levx;

    .line 1071
    invoke-virtual {v0}, Levx;->getActivity()Lba;

    move-result-object v0

    check-cast v0, Lewh;

    .line 1072
    invoke-interface {v0}, Lewh;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Levz;

    .line 46
    invoke-interface {v0}, Levz;->l()V

    .line 47
    return-void
.end method
