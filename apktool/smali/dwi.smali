.class final Ldwi;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ldng;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ldwh;


# direct methods
.method constructor <init>(Ldwh;I)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Ldwi;->b:Ldwh;

    iput p2, p0, Ldwi;->a:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x2

    .line 1078
    iget-object v0, p0, Ldwi;->b:Ldwh;

    iget-object v0, v0, Ldwh;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v2, Laen;->eS:I

    if-ne v0, v2, :cond_0

    .line 1079
    const/4 v0, 0x3

    .line 1081
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Ldwi;->b:Ldwh;

    iget-object v4, v4, Ldwh;->c:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1083
    iget-object v3, p0, Ldwi;->b:Ldwh;

    iget-object v3, v3, Ldwh;->d:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1084
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1086
    :goto_1
    iget v3, p0, Ldwi;->a:I

    invoke-static {v3, v0, v1, v2}, Ldng;->a(IILjava/lang/Integer;Ljava/util/Collection;)Ldng;

    move-result-object v0

    .line 66
    return-object v0

    :cond_0
    move v0, v1

    .line 1080
    goto :goto_0

    .line 1085
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 66
    check-cast p1, Ldng;

    .line 1069
    invoke-virtual {p1}, Ldng;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1071
    invoke-virtual {p1}, Ldng;->e()Ldqf;

    move-result-object v0

    check-cast v0, Ldyk;

    .line 1072
    iget-object v1, p0, Ldwi;->b:Ldwh;

    iget-object v1, v1, Ldwh;->a:Landroid/widget/TextView;

    iget-object v0, v0, Ldyk;->h:Liyq;

    invoke-virtual {v0}, Liyq;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    return-void
.end method
