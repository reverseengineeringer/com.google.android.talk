.class final Lckk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lhkx;

.field final synthetic b:Lckh;


# direct methods
.method constructor <init>(Lckh;Lhkx;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lckk;->b:Lckh;

    iput-object p2, p0, Lckk;->a:Lhkx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 116
    const/16 v0, 0x108

    invoke-static {v0}, Laal;->c(I)V

    .line 118
    iget-object v0, p0, Lckk;->b:Lckh;

    .line 1026
    iget-object v0, v0, Lckh;->a:Lcfc;

    .line 118
    iget-object v1, p0, Lckk;->a:Lhkx;

    invoke-virtual {v1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcfc;->c(Ljava/lang/String;)V

    .line 119
    return-void
.end method
