.class final Lbas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbar;


# direct methods
.method constructor <init>(Lbar;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lbas;->a:Lbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lbas;->a:Lbar;

    iget-object v0, v0, Lbar;->a:Lbap;

    sget v1, Laen;->hB:I

    invoke-virtual {v0, v1}, Lbap;->a(I)V

    .line 204
    return-void
.end method
