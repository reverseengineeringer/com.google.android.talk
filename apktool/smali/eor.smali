.class public final Leor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcnz;
.implements Leot;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lhpz;

.field private final c:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Leor;->a:Landroid/content/Context;

    .line 55
    const-class v0, Lhpz;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Leor;->b:Lhpz;

    .line 56
    const-class v0, Lbdp;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    .line 57
    const-string v1, "smsmms"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Leor;->c:Landroid/content/SharedPreferences;

    .line 58
    new-instance v1, Leos;

    invoke-direct {v1, p0}, Leos;-><init>(Leor;)V

    invoke-interface {v0, v1}, Lbdp;->a(Ljava/lang/Runnable;)V

    .line 65
    invoke-virtual {p0}, Leor;->b()V

    .line 66
    return-void
.end method

.method private r()Lhqb;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Leor;->b:Lhpz;

    invoke-virtual {p0}, Leor;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    return-object v0
.end method

.method private s()Lhqc;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Leor;->b:Lhpz;

    invoke-virtual {p0}, Leor;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 75
    invoke-static {}, Lezm;->d()Z

    move-result v0

    invoke-static {v0}, Laen;->b(Z)V

    .line 81
    iget-object v0, p0, Leor;->b:Lhpz;

    const-string v1, "SMS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lhpz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 82
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Leor;->b:Lhpz;

    const-string v1, "SMS"

    .line 85
    invoke-interface {v0, v1}, Lhpz;->a(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "gaia_id"

    const-string v2, "_sms_only_account"

    .line 86
    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "chat_id"

    const-string v2, "_sms_only_account"

    .line 87
    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "sms_only"

    .line 88
    invoke-virtual {v0, v1, v3}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    const-string v1, "is_managed_account"

    .line 89
    invoke-virtual {v0, v1, v3}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lhqc;->d()I

    move-result v0

    .line 92
    :cond_0
    return v0
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    const-string v0, "merged_sms"

    invoke-virtual {p0}, Leor;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 184
    invoke-direct {p0}, Leor;->s()Lhqc;

    move-result-object v0

    const-string v1, "sms_send_from_key"

    invoke-virtual {v0, v1, p1}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 185
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Leor;->s()Lhqc;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 280
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Leor;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Enable merged conversations"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    return-void
.end method

.method public a(I)Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Leor;->b:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "sms_only"

    invoke-interface {v0, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method b()V
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Leor;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Leor;->c:Landroid/content/SharedPreferences;

    const-string v1, "merged_version_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 127
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Leor;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h()V

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Leor;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_smsmms_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    return-void
.end method

.method public b(I)Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Leor;->b:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "is_sms_account"

    invoke-interface {v0, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 252
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 272
    const-string v2, "Unexpected key: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    move v0, v1

    .line 273
    :goto_2
    return v0

    .line 252
    :sswitch_0
    const-string v2, "group_mms_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v2, "delete_old_messages_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "sms_delivery_report_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "enable_auto_retrieve_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "enable_auto_retrieve_in_roaming_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "use_local_apn_pref_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "dump_sms_pref_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "dump_mms_pref_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "Enable merged conversations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 254
    :pswitch_0
    invoke-virtual {p0}, Leor;->p()Z

    move-result v0

    goto :goto_2

    .line 256
    :pswitch_1
    invoke-virtual {p0}, Leor;->n()Z

    move-result v0

    goto :goto_2

    .line 258
    :pswitch_2
    invoke-virtual {p0}, Leor;->m()Z

    move-result v0

    goto :goto_2

    .line 260
    :pswitch_3
    invoke-virtual {p0}, Leor;->i()Z

    move-result v0

    goto :goto_2

    .line 262
    :pswitch_4
    invoke-virtual {p0}, Leor;->j()Z

    move-result v0

    goto :goto_2

    .line 264
    :pswitch_5
    invoke-direct {p0}, Leor;->r()Lhqb;

    move-result-object v0

    const-string v2, "use_local_apn_pref_key"

    invoke-interface {v0, v2, v1}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_2

    .line 266
    :pswitch_6
    invoke-virtual {p0}, Leor;->k()Z

    move-result v0

    goto/16 :goto_2

    .line 268
    :pswitch_7
    invoke-virtual {p0}, Leor;->l()Z

    move-result v0

    goto/16 :goto_2

    .line 270
    :pswitch_8
    invoke-virtual {p0}, Leor;->d()Z

    move-result v0

    goto/16 :goto_2

    .line 272
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6da91191 -> :sswitch_5
        -0x6835fbe8 -> :sswitch_1
        -0x57cc61d2 -> :sswitch_4
        -0x417379e7 -> :sswitch_2
        -0x1a9a1b50 -> :sswitch_3
        0x2cf7e0b9 -> :sswitch_8
        0x49968133 -> :sswitch_0
        0x51ad2a9a -> :sswitch_7
        0x7fd70ad4 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Leor;->a:Landroid/content/Context;

    const-class v1, Lely;

    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Z
    .locals 1

    .prologue
    .line 1660
    sget-object v0, Ldvd;->d:Ldvi;

    invoke-static {}, Ldvi;->a()Z

    move-result v0

    .line 109
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Leor;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Leor;->s()Lhqc;

    move-result-object v0

    const-string v1, "apns_version"

    invoke-virtual {v0, v1, p1}, Lhqc;->b(Ljava/lang/String;I)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 154
    return-void
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Leor;->c:Landroid/content/SharedPreferences;

    const-string v1, "Enable merged conversations"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Leor;->r()Lhqb;

    move-result-object v0

    const-string v1, "apns_version"

    invoke-virtual {p0}, Leor;->f()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Leor;->a:Landroid/content/Context;

    .line 164
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->pY:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2043
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 163
    return v0
.end method

.method public g()Z
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Leor;->c:Landroid/content/SharedPreferences;

    const-string v1, "enable_smsmms_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    invoke-direct {p0}, Leor;->r()Lhqb;

    move-result-object v0

    const-string v1, "sms_send_from_key"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 3

    .prologue
    .line 189
    invoke-direct {p0}, Leor;->r()Lhqb;

    move-result-object v0

    const-string v1, "enable_auto_retrieve_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 3

    .prologue
    .line 194
    invoke-direct {p0}, Leor;->r()Lhqb;

    move-result-object v0

    const-string v1, "enable_auto_retrieve_in_roaming_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 3

    .prologue
    .line 199
    invoke-direct {p0}, Leor;->r()Lhqb;

    move-result-object v0

    const-string v1, "dump_sms_pref_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 3

    .prologue
    .line 204
    invoke-direct {p0}, Leor;->r()Lhqb;

    move-result-object v0

    const-string v1, "dump_mms_pref_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 3

    .prologue
    .line 209
    invoke-direct {p0}, Leor;->r()Lhqb;

    move-result-object v0

    const-string v1, "sms_delivery_report_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 3

    .prologue
    .line 214
    invoke-direct {p0}, Leor;->r()Lhqb;

    move-result-object v0

    const-string v1, "delete_old_messages_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public o()V
    .locals 3

    .prologue
    .line 219
    invoke-direct {p0}, Leor;->s()Lhqc;

    move-result-object v0

    const-string v1, "delete_old_messages_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 220
    return-void
.end method

.method public p()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 228
    invoke-static {}, Lezm;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Leor;->r()Lhqb;

    move-result-object v1

    const-string v2, "group_mms_key"

    invoke-interface {v1, v2, v0}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 239
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v1

    if-nez v1, :cond_0

    .line 245
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Leor;->r()Lhqb;

    move-result-object v1

    const-string v2, "group_mms_key"

    invoke-interface {v1, v2, v0}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
