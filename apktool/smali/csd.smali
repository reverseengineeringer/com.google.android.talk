.class final Lcsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcsb;


# direct methods
.method constructor <init>(Lcsb;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcsd;->a:Lcsb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcsd;->a:Lcsb;

    .line 1019
    iget-object v0, v0, Lcsb;->a:Lcru;

    .line 53
    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcsd;->a:Lcsb;

    .line 2019
    iget-object v0, v0, Lcsb;->a:Lcru;

    .line 54
    invoke-virtual {v0}, Lcru;->a()V

    .line 59
    :cond_0
    return-void
.end method
