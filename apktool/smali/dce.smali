.class final Ldce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Ldcc;


# direct methods
.method constructor <init>(Ldcc;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Ldce;->a:Ldcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Ldce;->a:Ldcc;

    .line 1028
    iget-object v3, v0, Ldcc;->context:Lill;

    .line 1035
    sget-boolean v0, Lbwc;->b:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lbwc;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    move v0, v1

    .line 95
    :goto_0
    if-eqz v0, :cond_5

    .line 96
    iget-object v0, p0, Ldce;->a:Ldcc;

    .line 2028
    iget-object v0, v0, Ldcc;->b:Landroid/widget/EditText;

    .line 96
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Ldce;->a:Ldcc;

    .line 3028
    iget-object v0, v0, Ldcc;->a:Laxq;

    .line 97
    const-string v1, ""

    invoke-virtual {v0, v1}, Laxq;->a(Ljava/lang/String;)V

    .line 101
    :goto_1
    return-void

    .line 1038
    :cond_2
    sget-object v0, Lbwc;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1039
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1040
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 1041
    const-class v0, Lbwb;

    invoke-static {v3, v0}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1042
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwb;

    .line 1043
    invoke-interface {v0, v4}, Lbwb;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1044
    invoke-interface {v0, v3}, Lbwb;->a(Landroid/content/Context;)V

    move v0, v2

    .line 1045
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1049
    goto :goto_0

    .line 100
    :cond_5
    iget-object v0, p0, Ldce;->a:Ldcc;

    .line 4028
    iget-object v0, v0, Ldcc;->a:Laxq;

    .line 100
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laxq;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
