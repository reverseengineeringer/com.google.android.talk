.class public Lbxq;
.super Lime;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public aj:Landroid/widget/EditText;

.field private ak:Lbxr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lime;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbxq;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    if-eqz p0, :cond_0

    .line 87
    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz p2, :cond_1

    .line 92
    const-string v1, "positive"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    if-eqz p3, :cond_2

    .line 96
    const-string v1, "negative"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_2
    new-instance v1, Lbxq;

    invoke-direct {v1}, Lbxq;-><init>()V

    .line 100
    invoke-virtual {v1, v0}, Lbxq;->setArguments(Landroid/os/Bundle;)V

    .line 101
    return-object v1
.end method

.method private q()Lbxr;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lbxq;->ak:Lbxr;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lbxq;->ak:Lbxr;

    .line 240
    :goto_0
    return-object v0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lbxq;->getTargetFragment()Lav;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_1

    instance-of v1, v0, Lbxr;

    if-eqz v1, :cond_1

    .line 232
    check-cast v0, Lbxr;

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lbxq;->getActivity()Lba;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_2

    instance-of v1, v0, Lbxr;

    if-eqz v1, :cond_2

    .line 236
    check-cast v0, Lbxr;

    goto :goto_0

    .line 240
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 150
    invoke-virtual {p0}, Lbxq;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lbxq;->getActivity()Lba;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 157
    :cond_0
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    const-string v2, "positive"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    const-string v2, "positive"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    :cond_1
    const-string v2, "negative"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    const-string v2, "negative"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    :cond_2
    const-string v2, "neutral"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    const-string v2, "neutral"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    :cond_3
    const-string v2, "edit_text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lbxq;->getActivity()Lba;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lbxq;->aj:Landroid/widget/EditText;

    .line 173
    iget-object v2, p0, Lbxq;->aj:Landroid/widget/EditText;

    const-string v3, "edit_text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lbxq;->aj:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 177
    :cond_4
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0}, Lbxq;->q()Lbxr;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lbxq;->getArguments()Landroid/os/Bundle;

    invoke-virtual {p0}, Lbxq;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbxr;->c(Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 191
    invoke-direct {p0}, Lbxq;->q()Lbxr;

    move-result-object v0

    .line 192
    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lbxq;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 197
    const-string v2, "edit_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbxq;->aj:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 198
    const-string v2, "edit_text"

    iget-object v3, p0, Lbxq;->aj:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    invoke-virtual {p0}, Lbxq;->getArguments()Landroid/os/Bundle;

    invoke-virtual {p0}, Lbxq;->getTag()Ljava/lang/String;

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-virtual {p0}, Lbxq;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lbxq;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbxr;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :pswitch_2
    invoke-virtual {p0}, Lbxq;->getArguments()Landroid/os/Bundle;

    invoke-virtual {p0}, Lbxq;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbxr;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lime;->onStart()V

    .line 185
    invoke-virtual {p0}, Lbxq;->c()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 187
    return-void
.end method
