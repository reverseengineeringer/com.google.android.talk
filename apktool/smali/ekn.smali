.class final Lekn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lekk;


# direct methods
.method constructor <init>(Lekk;Z)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lekn;->b:Lekk;

    iput-boolean p2, p0, Lekn;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lekn;->b:Lekk;

    invoke-virtual {v0}, Lekk;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lekn;->b:Lekk;

    .line 1032
    iget-object v1, v1, Lekk;->a:Lbfd;

    .line 175
    iget-boolean v2, p0, Lekn;->a:Z

    invoke-static {v0, v1, v2}, Lbff;->b(Landroid/content/Context;Lbfd;Z)V

    .line 176
    iget-object v0, p0, Lekn;->b:Lekk;

    .line 2032
    iget-object v0, v0, Lekk;->b:Liip;

    .line 176
    iget-boolean v1, p0, Lekn;->a:Z

    invoke-virtual {v0, v1}, Liip;->a(Z)V

    .line 177
    return-void
.end method
