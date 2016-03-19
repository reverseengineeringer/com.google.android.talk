.class final Lcdc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcdb;


# direct methods
.method constructor <init>(Lcdb;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcdc;->a:Lcdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcdc;->a:Lcdb;

    .line 141
    invoke-virtual {v0}, Lcdb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcda;->a(Landroid/content/res/Resources;)Lcda;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcdc;->a:Lcdb;

    invoke-virtual {v1}, Lcdb;->getFragmentManager()Lbg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcda;->a(Lbg;)V

    .line 143
    return-void
.end method
