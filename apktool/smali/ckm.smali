.class final Lckm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcgn;

.field final synthetic b:Lhkx;

.field final synthetic c:Lckh;


# direct methods
.method constructor <init>(Lckh;Lcgn;Lhkx;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lckm;->c:Lckh;

    iput-object p2, p0, Lckm;->a:Lcgn;

    iput-object p3, p0, Lckm;->b:Lhkx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 163
    const/16 v0, 0x500

    invoke-static {v0}, Laal;->c(I)V

    .line 164
    iget-object v0, p0, Lckm;->a:Lcgn;

    iget-object v1, p0, Lckm;->b:Lhkx;

    invoke-virtual {v1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcgn;->a(Ljava/lang/String;)V

    .line 165
    return-void
.end method
