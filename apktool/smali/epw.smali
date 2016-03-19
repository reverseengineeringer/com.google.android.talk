.class final Lepw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lepv;


# direct methods
.method constructor <init>(Lepv;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lepw;->a:Lepv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 141
    iget-object v0, p0, Lepw;->a:Lepv;

    .line 1062
    iget-object v0, v0, Lepv;->e:Landroid/widget/EditText;

    .line 141
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2181
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    .line 143
    const/16 v2, 0x8c

    if-le v1, v2, :cond_0

    .line 144
    const-string v2, "The status message cannot exceed the maximum character count of 140. Was "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhbs;->a(Ljava/lang/String;)V

    .line 147
    :cond_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const/16 v0, 0x790

    .line 151
    :goto_0
    iget-object v2, p0, Lepw;->a:Lepv;

    .line 3062
    iget-object v2, v2, Lepv;->c:Lbfd;

    .line 151
    invoke-static {v2, v0}, Laal;->a(Lbfd;I)V

    .line 152
    new-instance v0, Lepz;

    iget-object v2, p0, Lepw;->a:Lepv;

    iget-object v3, p0, Lepw;->a:Lepv;

    .line 4062
    iget-object v3, v3, Lepv;->a:Landroid/content/Context;

    .line 153
    invoke-direct {v0, v2, v3, v1}, Lepz;-><init>(Lepv;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lbyk;

    iget-object v2, p0, Lepw;->a:Lepv;

    .line 5062
    iget-object v2, v2, Lepv;->b:Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;

    .line 154
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->getFragmentManager()Lbg;

    move-result-object v2

    invoke-direct {v1, v2}, Lbyk;-><init>(Lbg;)V

    .line 152
    invoke-static {v0, v1}, Lbyi;->a(Lbyn;Lbym;)Lbyi;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lbyi;->a()V

    .line 156
    return-void

    .line 150
    :cond_1
    const/16 v0, 0x78f

    goto :goto_0
.end method
