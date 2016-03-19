.class final Lboh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 4704
    iput-object p1, p0, Lboh;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 4708
    iget-object v0, p0, Lboh;->a:Lbng;

    invoke-virtual {v0}, Lbng;->getActivity()Lba;

    move-result-object v0

    .line 4709
    if-eqz v0, :cond_0

    .line 4710
    invoke-virtual {v0}, Lba;->finish()V

    .line 4712
    :cond_0
    return-void
.end method
