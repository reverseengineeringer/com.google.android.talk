.class final Lbmz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbmx;


# direct methods
.method constructor <init>(Lbmx;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lbmz;->b:Lbmx;

    iput-object p2, p0, Lbmz;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lbmz;->a:Landroid/content/Context;

    invoke-static {v0}, Lfbt;->a(Landroid/content/Context;)Lfbt;

    move-result-object v0

    iget-object v1, p0, Lbmz;->b:Lbmx;

    .line 1041
    iget-object v1, v1, Lbmx;->b:Lcom/google/android/apps/hangouts/conversation/v2/MessageEditText;

    .line 134
    invoke-virtual {v0, p1, v1}, Lfbt;->a(Landroid/text/Spannable;Landroid/widget/TextView;)V

    .line 135
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lbmz;->b:Lbmx;

    .line 2041
    iget-object v0, v0, Lbmx;->k:Lbnd;

    .line 2089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iget-object v0, p0, Lbmz;->b:Lbmx;

    .line 3041
    iget-object v0, v0, Lbmx;->k:Lbnd;

    .line 154
    invoke-virtual {v0, p1, p3, p4}, Lbnd;->a(Ljava/lang/CharSequence;II)V

    .line 155
    iget-object v0, p0, Lbmz;->b:Lbmx;

    .line 4041
    iget-object v0, v0, Lbmx;->k:Lbnd;

    .line 155
    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method
