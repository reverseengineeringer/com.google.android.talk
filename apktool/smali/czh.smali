.class final Lczh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lczf;


# direct methods
.method constructor <init>(Lczf;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lczh;->a:Lczf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lczh;->a:Lczf;

    .line 1030
    iget-object v0, v0, Lczf;->ak:Lczi;

    .line 97
    iget-object v1, p0, Lczh;->a:Lczf;

    .line 2030
    iget v1, v1, Lczf;->aj:I

    .line 97
    invoke-virtual {v0, v1}, Lczi;->c(I)V

    .line 98
    const/16 v0, 0xb11

    invoke-static {v0}, Laal;->c(I)V

    .line 99
    iget-object v0, p0, Lczh;->a:Lczf;

    invoke-virtual {v0}, Lczf;->a()V

    .line 101
    iget-object v0, p0, Lczh;->a:Lczf;

    invoke-virtual {v0}, Lczf;->getActivity()Lba;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->n()V

    .line 102
    return-void
.end method
