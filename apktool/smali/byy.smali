.class public final Lbyy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lbyy;->a:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 221
    invoke-static {p1}, Laal;->a(Landroid/text/Spannable;)V

    .line 222
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lbyy;->a:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    .line 1054
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->a:Lcdi;

    .line 200
    invoke-virtual {v0, p1}, Lcdi;->a(Ljava/lang/CharSequence;)V

    .line 204
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lbyy;->a:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    .line 2054
    iget v0, v0, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->e:I

    .line 207
    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lbyy;->a:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    .line 3054
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->a(I)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lbyy;->a:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    .line 4054
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->a(I)V

    goto :goto_0
.end method
