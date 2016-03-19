.class final Lckz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lckr;


# direct methods
.method constructor <init>(Lckr;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lckz;->a:Lckr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 360
    const/16 v0, 0x500

    invoke-static {v0}, Laal;->c(I)V

    .line 362
    iget-object v0, p0, Lckz;->a:Lckr;

    .line 1034
    iget-object v0, v0, Lckr;->a:Lcgn;

    .line 362
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcgn;->a(Ljava/lang/String;)V

    .line 363
    return-void
.end method
