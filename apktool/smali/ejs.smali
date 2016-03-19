.class public final Lejs;
.super Likd;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Likd;-><init>(Landroid/content/Context;B)V

    .line 41
    return-void
.end method

.method public static a(I)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1124
    sget v0, Laal;->hM:I

    if-eq p0, v0, :cond_0

    sget v0, Laal;->hL:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1134
    :goto_0
    const-string v3, "Expected condition to be true"

    invoke-static {v3, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 139
    const-string v3, "babel_ringtones"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 142
    sget v0, Laal;->hM:I

    if-ne p0, v0, :cond_2

    .line 143
    const-string v0, "message_ringtone"

    .line 150
    :goto_1
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-nez v0, :cond_4

    :goto_2
    return-object v2

    :cond_1
    move v0, v1

    .line 1124
    goto :goto_0

    .line 144
    :cond_2
    sget v0, Laal;->hL:I

    if-ne p0, v0, :cond_3

    .line 145
    const-string v0, "incoming_call_ringtone"

    goto :goto_1

    .line 148
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown resId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    .line 151
    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2
.end method

.method public static a()V
    .locals 5

    .prologue
    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 89
    const-string v1, "babel_ringtones"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    sget v1, Laal;->hM:I

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->ak:I

    const-string v3, ".ogg"

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Leyt;->a(IILjava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    const-string v2, "message_ringtone"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    :cond_0
    sget v1, Laal;->hL:I

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->dw:I

    const-string v3, ".ogg"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Leyt;->a(IILjava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    const-string v2, "incoming_call_ringtone"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lejs;->a:Landroid/net/Uri;

    .line 120
    invoke-virtual {p0}, Lejs;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Leyt;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lejs;->b(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lejs;->a(Landroid/net/Uri;)V

    .line 113
    return-void

    .line 112
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lejs;->a:Landroid/net/Uri;

    return-object v0
.end method

.method protected c()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 160
    sget-object v0, Leyt;->a:Landroid/net/Uri;

    iget-object v1, p0, Lejs;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget v0, Laal;->hM:I

    invoke-static {v0}, Lejs;->a(I)Landroid/net/Uri;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 162
    :cond_0
    sget-object v0, Leyt;->b:Landroid/net/Uri;

    iget-object v1, p0, Lejs;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    sget v0, Laal;->hL:I

    invoke-static {v0}, Lejs;->a(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_1
    invoke-super {p0}, Likd;->c()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
