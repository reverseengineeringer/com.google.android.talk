.class public final Letk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lebb;
.implements Letb;
.implements Levg;
.implements Levq;
.implements Levz;
.implements Lewg;
.implements Lewn;
.implements Lewq;
.implements Lhpw;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Less;

.field final a:Landroid/content/Context;

.field final b:Lerg;

.field final c:Landroid/os/Handler;

.field final d:Ljava/lang/Runnable;

.field public e:Levu;

.field public f:Levr;

.field g:Z

.field private final h:Leto;

.field private final i:Lewj;

.field private final j:I

.field private k:Limi;

.field private l:Lhzy;

.field private m:I

.field private n:Lav;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lbfd;

.field private t:Ljava/lang/String;

.field private u:Lesz;

.field private v:Levf;

.field private w:Levd;

.field private x:Lero;

.field private y:Z

.field private final z:Leqm;


# direct methods
.method constructor <init>(Landroid/content/Context;Lerg;Leto;Leqm;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Letk;->c:Landroid/os/Handler;

    .line 125
    new-instance v0, Letl;

    invoke-direct {v0, p0}, Letl;-><init>(Letk;)V

    iput-object v0, p0, Letk;->d:Ljava/lang/Runnable;

    .line 136
    iput v1, p0, Letk;->m:I

    .line 2198
    const-string v0, "Expected non-null"

    invoke-static {v0, p2}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iput-object p1, p0, Letk;->a:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Letk;->b:Lerg;

    .line 174
    iput-object p3, p0, Letk;->h:Leto;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Letk;->i:Lewj;

    .line 176
    iput v1, p0, Letk;->j:I

    .line 177
    iput-object p4, p0, Letk;->z:Leqm;

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lewj;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Letk;->c:Landroid/os/Handler;

    .line 125
    new-instance v0, Letl;

    invoke-direct {v0, p0}, Letl;-><init>(Letk;)V

    iput-object v0, p0, Letk;->d:Ljava/lang/Runnable;

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Letk;->m:I

    .line 185
    iput-object p1, p0, Letk;->a:Landroid/content/Context;

    .line 186
    iput-object v1, p0, Letk;->b:Lerg;

    .line 187
    iput-object v1, p0, Letk;->h:Leto;

    .line 188
    iput-object p2, p0, Letk;->i:Lewj;

    .line 189
    if-eqz p3, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Letk;->j:I

    .line 190
    iput-object v1, p0, Letk;->z:Leqm;

    .line 191
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private a(Lav;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const v8, 0x1020002

    const/4 v7, 0x0

    .line 1301
    iget-object v0, p0, Letk;->k:Limi;

    if-nez v0, :cond_0

    .line 1302
    iput-object p1, p0, Letk;->n:Lav;

    .line 1303
    iput-object p2, p0, Letk;->o:Ljava/lang/String;

    .line 1304
    invoke-direct {p0}, Letk;->n()V

    .line 1324
    :goto_0
    return-void

    .line 1306
    :cond_0
    iput-object v1, p0, Letk;->n:Lav;

    .line 1307
    iput-object v1, p0, Letk;->o:Ljava/lang/String;

    .line 1308
    iget-object v0, p0, Letk;->k:Limi;

    invoke-virtual {v0}, Limi;->C_()Lbg;

    move-result-object v0

    .line 1309
    invoke-virtual {v0, v8}, Lbg;->a(I)Lav;

    move-result-object v1

    .line 1310
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lav;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1311
    const-string v1, "Babel_telephony"

    const-string v2, "TeleSetupController.showFragment, already displaying fragment: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1314
    :cond_2
    const-string v2, "Babel_telephony"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x33

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleSetupController.showFragment, fragment: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1316
    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    .line 1317
    if-eqz v1, :cond_3

    .line 1318
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lbz;->a(II)Lbz;

    .line 1320
    :cond_3
    invoke-virtual {v0, v8, p1, p2}, Lbz;->b(ILav;Ljava/lang/String;)Lbz;

    .line 1321
    invoke-virtual {v0}, Lbz;->b()I

    goto/16 :goto_0
.end method

.method private a(Lesw;)Z
    .locals 2

    .prologue
    .line 502
    invoke-virtual {p1}, Lesw;->b()Lest;

    move-result-object v0

    iget-object v1, p0, Letk;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lest;->a(Landroid/content/Context;)Z

    move-result v0

    .line 9134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 505
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-virtual {p1}, Lesw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lezm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Less;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 835
    iget-object v0, p1, Less;->b:Leum;

    iget-boolean v0, v0, Leum;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "wifi"

    .line 837
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_network_type_%s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 839
    iget-object v3, p0, Letk;->a:Landroid/content/Context;

    const-string v4, "babel_stun_ping_latency_millis"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-wide/16 v4, 0x64

    invoke-static {v3, v0, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 842
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    .line 843
    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    invoke-virtual {v0}, Leut;->b()I

    move-result v0

    .line 18517
    sget-object v3, Ldvp;->N:Ldml;

    invoke-virtual {v3, v0}, Ldml;->b(I)Z

    move-result v3

    .line 844
    iget-boolean v0, p1, Less;->e:Z

    if-eqz v0, :cond_3

    iget-wide v6, p1, Less;->f:J

    long-to-int v0, v6

    .line 848
    :goto_2
    iget-boolean v6, p1, Less;->g:Z

    if-nez v6, :cond_0

    iget-boolean v6, p1, Less;->e:Z

    if-eqz v6, :cond_0

    iget-wide v6, p1, Less;->f:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_5

    .line 850
    :cond_0
    if-eqz v3, :cond_4

    .line 851
    const-string v1, "Babel_telephony"

    const-string v3, "TeleSetupController.hasAcceptableStunPingLatency, not acceptable, didTimeout: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p1, Less;->g:Z

    iget-boolean v5, p1, Less;->e:Z

    iget-wide v6, p1, Less;->f:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x49

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wasStunPingSuccessful: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", latency millis: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    const/16 v1, 0xb51

    invoke-virtual {p0, v1, v0}, Letk;->a(II)V

    move v0, v2

    .line 871
    :goto_3
    return v0

    .line 836
    :cond_1
    iget-object v0, p1, Less;->a:Lerc;

    iget v0, v0, Lerc;->e:I

    invoke-static {v0}, Laal;->k(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 839
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 844
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    .line 859
    :cond_4
    const/16 v2, 0xb53

    invoke-virtual {p0, v2, v0}, Letk;->a(II)V

    move v0, v1

    .line 861
    goto :goto_3

    .line 864
    :cond_5
    if-eqz v3, :cond_6

    .line 865
    const/16 v2, 0xb52

    invoke-virtual {p0, v2, v0}, Letk;->a(II)V

    move v0, v1

    .line 867
    goto :goto_3

    .line 869
    :cond_6
    const/16 v2, 0xb54

    invoke-virtual {p0, v2, v0}, Letk;->a(II)V

    move v0, v1

    .line 871
    goto :goto_3
.end method

.method private static c(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1142
    packed-switch p0, :pswitch_data_0

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "STEP_UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1144
    :pswitch_0
    const-string v0, "STEP_START"

    goto :goto_0

    .line 1146
    :pswitch_1
    const-string v0, "STEP_CHOOSE_ACCOUNT"

    goto :goto_0

    .line 1148
    :pswitch_2
    const-string v0, "STEP_SETUP_ACCOUNT"

    goto :goto_0

    .line 1150
    :pswitch_3
    const-string v0, "STEP_UPDATE_GOOGLE_VOICE_STATUS"

    goto :goto_0

    .line 1152
    :pswitch_4
    const-string v0, "STEP_GOOGLE_VOICE_TOS"

    goto :goto_0

    .line 1154
    :pswitch_5
    const-string v0, "STEP_GET_PROXY_NUMBER"

    goto :goto_0

    .line 1156
    :pswitch_6
    const-string v0, "STEP_END"

    goto :goto_0

    .line 1158
    :pswitch_7
    const-string v0, "STEP_CREATE_HANGOUT_ID"

    goto :goto_0

    .line 1142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private d(I)V
    .locals 8

    .prologue
    const/4 v0, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1165
    const-string v1, "Babel_telephony"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleSetupController.finishSetupWithResult, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1167
    iget-boolean v1, p0, Letk;->p:Z

    if-nez v1, :cond_1

    .line 1168
    iput-boolean v5, p0, Letk;->p:Z

    .line 1169
    if-ne p1, v7, :cond_0

    iget-object v1, p0, Letk;->a:Landroid/content/Context;

    invoke-static {v1}, Laal;->s(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1170
    const-string v1, "Babel_telephony"

    const-string v2, "TeleSetupController.finishSetupWithResult, can\'t make cell calls, cancelling"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v0

    .line 1175
    :cond_0
    iget v1, p0, Letk;->j:I

    packed-switch v1, :pswitch_data_0

    .line 1198
    iget v0, p0, Letk;->j:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown start reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 25207
    :cond_1
    :goto_0
    iput-boolean v5, p0, Letk;->g:Z

    .line 25208
    iget-object v0, p0, Letk;->k:Limi;

    if-eqz v0, :cond_2

    .line 25209
    iget-object v0, p0, Letk;->k:Limi;

    invoke-virtual {v0}, Limi;->finish()V

    .line 25210
    iput-object v4, p0, Letk;->k:Limi;

    .line 25212
    :cond_2
    iget-object v0, p0, Letk;->v:Levf;

    if-eqz v0, :cond_3

    .line 25213
    iget-object v0, p0, Letk;->v:Levf;

    invoke-interface {v0}, Levf;->c()V

    .line 25214
    iput-object v4, p0, Letk;->v:Levf;

    .line 25216
    :cond_3
    iget-object v0, p0, Letk;->w:Levd;

    if-eqz v0, :cond_4

    .line 25217
    iget-object v0, p0, Letk;->w:Levd;

    invoke-virtual {v0}, Levd;->c()V

    .line 25218
    iput-object v4, p0, Letk;->w:Levd;

    .line 25220
    :cond_4
    iget-object v0, p0, Letk;->e:Levu;

    if-eqz v0, :cond_5

    .line 25221
    iget-object v0, p0, Letk;->e:Levu;

    invoke-virtual {v0}, Levu;->d()V

    .line 25222
    iput-object v4, p0, Letk;->e:Levu;

    .line 25224
    :cond_5
    iget-object v0, p0, Letk;->f:Levr;

    if-eqz v0, :cond_6

    .line 25225
    iget-object v0, p0, Letk;->f:Levr;

    invoke-virtual {v0}, Levr;->e()V

    .line 25226
    iput-object v4, p0, Letk;->f:Levr;

    .line 25228
    :cond_6
    iget-object v0, p0, Letk;->u:Lesz;

    if-eqz v0, :cond_7

    .line 25229
    iget-object v0, p0, Letk;->u:Lesz;

    invoke-virtual {v0}, Lesz;->e()V

    .line 25230
    iput-object v4, p0, Letk;->u:Lesz;

    .line 25232
    :cond_7
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    const-class v1, Lerm;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerm;

    invoke-virtual {v0, p0}, Lerm;->b(Lebb;)V

    .line 25233
    iput-object v4, p0, Letk;->n:Lav;

    .line 25234
    iput-object v4, p0, Letk;->o:Ljava/lang/String;

    .line 25235
    iget-object v0, p0, Letk;->c:Landroid/os/Handler;

    iget-object v1, p0, Letk;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1204
    return-void

    .line 1177
    :pswitch_0
    if-ne p1, v0, :cond_8

    .line 1178
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->x()V

    .line 1179
    iget-object v0, p0, Letk;->h:Leto;

    invoke-virtual {v0}, Leto;->b()V

    goto :goto_0

    .line 1180
    :cond_8
    if-ne p1, v5, :cond_9

    .line 1181
    iget-object v0, p0, Letk;->s:Lbfd;

    .line 25198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0}, Lesw;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1183
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1182
    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1184
    iget-object v0, p0, Letk;->b:Lerg;

    iget-object v1, p0, Letk;->x:Lero;

    invoke-virtual {v0, v1}, Lerg;->a(Lero;)V

    .line 1185
    iget-object v0, p0, Letk;->h:Leto;

    iget-object v1, p0, Letk;->s:Lbfd;

    iget-object v2, p0, Letk;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Leto;->a(Lbfd;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1187
    :cond_9
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0}, Lesw;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1188
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1187
    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1189
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->x()V

    .line 1190
    iget-object v0, p0, Letk;->h:Leto;

    invoke-virtual {v0}, Leto;->a()V

    goto/16 :goto_0

    .line 1195
    :pswitch_1
    iget-object v0, p0, Letk;->i:Lewj;

    invoke-interface {v0}, Lewj;->a()V

    goto/16 :goto_0

    .line 1175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private e(I)V
    .locals 4

    .prologue
    .line 1261
    const/4 v0, 0x0

    .line 1262
    iget-object v1, p0, Letk;->k:Limi;

    if-eqz v1, :cond_0

    .line 1263
    iget-object v0, p0, Letk;->k:Limi;

    invoke-virtual {v0}, Limi;->C_()Lbg;

    move-result-object v0

    .line 1264
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    check-cast v0, Lewa;

    .line 1268
    :cond_0
    if-nez v0, :cond_1

    .line 1269
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    sget v1, Laal;->qE:I

    .line 1270
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Letk;->a:Landroid/content/Context;

    .line 1271
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 26020
    new-instance v2, Lewa;

    invoke-direct {v2}, Lewa;-><init>()V

    .line 26021
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3}, Lewa;->setArguments(Landroid/os/Bundle;)V

    .line 26022
    invoke-virtual {v2, v0}, Lewa;->a(Ljava/lang/String;)V

    .line 26023
    invoke-virtual {v2, v1}, Lewa;->b(Ljava/lang/String;)V

    .line 1272
    const-string v0, "progress"

    invoke-direct {p0, v2, v0}, Letk;->a(Lav;Ljava/lang/String;)V

    .line 1276
    :goto_0
    return-void

    .line 1274
    :cond_1
    iget-object v1, p0, Letk;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lewa;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    iget-boolean v0, p0, Letk;->p:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Create UI after callback invoked."

    invoke-static {v0, v3}, Laen;->b(ZLjava/lang/Object;)V

    .line 211
    iget-boolean v0, p0, Letk;->q:Z

    if-nez v0, :cond_5

    .line 212
    iput-boolean v1, p0, Letk;->q:Z

    .line 2239
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    .line 3198
    const-string v1, "Expected non-null"

    invoke-static {v1, p0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3037
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/google/android/apps/hangouts/telephony/ui/TeleSetupActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3038
    const-string v0, "controller"

    new-instance v3, Leym;

    invoke-direct {v3, p0}, Leym;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2240
    invoke-virtual {p0}, Letk;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2241
    const v0, 0x50008000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    :cond_0
    invoke-virtual {p0}, Letk;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    new-instance v0, Levd;

    iget-object v3, p0, Letk;->a:Landroid/content/Context;

    invoke-direct {v0, v3, p0, v1}, Levd;-><init>(Landroid/content/Context;Letk;Landroid/content/Intent;)V

    iput-object v0, p0, Letk;->w:Levd;

    .line 218
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;->a()Levc;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p0}, Levc;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    iget-object v3, p0, Letk;->w:Levd;

    invoke-virtual {v0, v1, v3}, Levc;->a(Landroid/content/Intent;Levd;)Levf;

    move-result-object v0

    iput-object v0, p0, Letk;->v:Levf;

    .line 223
    :cond_1
    iget-object v0, p0, Letk;->v:Levf;

    if-nez v0, :cond_3

    .line 224
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.createSetupActivity, unable to show dialog on top of in-call UI"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Letk;->w:Levd;

    invoke-virtual {v0}, Levd;->a()V

    .line 236
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 210
    goto :goto_0

    .line 228
    :cond_3
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.createSetupActivity, wifi call waiting for dialog"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 231
    :cond_4
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 234
    :cond_5
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.createSetupActivity, creation already in progress."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private o()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 405
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    const-string v2, "babel_user_to_allow_wifi_calling_for"

    const-string v3, "tycho_users"

    invoke-static {v0, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    const-string v3, "Babel_telephony"

    const-string v4, "TeleSetupController.chooseWifiOrCellular, selectedAccount: "

    iget-object v0, p0, Letk;->s:Lbfd;

    .line 410
    invoke-static {v0}, Laal;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v4, v1, [Ljava/lang/Object;

    .line 409
    invoke-static {v3, v0, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Letk;->s:Lbfd;

    if-nez v0, :cond_3

    .line 412
    const-string v0, "hangouts_testing_users"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8035
    new-instance v0, Levm;

    invoke-direct {v0}, Levm;-><init>()V

    .line 413
    const-string v1, "account_chooser"

    invoke-direct {p0, v0, v1}, Letk;->a(Lav;Ljava/lang/String;)V

    .line 427
    :goto_1
    return-void

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_1
    iget v0, p0, Letk;->j:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected start reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Letk;->j:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v2, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 421
    invoke-virtual {p0, v1}, Letk;->a(Z)V

    .line 422
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Letk;->d(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 417
    goto :goto_2

    .line 425
    :cond_3
    invoke-virtual {p0}, Letk;->m()V

    goto :goto_1
.end method

.method private p()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 901
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v1

    .line 902
    invoke-virtual {v1}, Leut;->b()I

    move-result v2

    .line 903
    if-ne v2, v6, :cond_0

    .line 904
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    invoke-virtual {v0}, Leut;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Letk;->t:Ljava/lang/String;

    .line 905
    const-string v3, "Babel_telephony"

    const-string v4, "TeleSetupController.setSelectedAccount accountName:"

    iget-object v0, p0, Letk;->t:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 908
    :cond_0
    if-eq v2, v6, :cond_1

    .line 909
    invoke-static {v2}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 19252
    iput-object v0, p0, Letk;->s:Lbfd;

    .line 910
    iget-object v0, p0, Letk;->s:Lbfd;

    if-nez v0, :cond_1

    .line 911
    invoke-virtual {v1, v6}, Leut;->a(I)V

    .line 914
    :cond_1
    return-void

    .line 905
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 951
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.loginToAccount"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 953
    sget v0, Laal;->qF:I

    invoke-direct {p0, v0}, Letk;->e(I)V

    .line 954
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    const-string v1, "babel_wifi_call_account_setup_timeout"

    const/16 v2, 0x4e20

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 957
    iget-object v1, p0, Letk;->c:Landroid/os/Handler;

    iget-object v2, p0, Letk;->d:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 959
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    const-class v1, Lerm;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerm;

    invoke-virtual {v0, p0}, Lerm;->a(Lebb;)V

    .line 960
    iget-object v0, p0, Letk;->l:Lhzy;

    const-string v1, "active-hangouts-account"

    invoke-virtual {v0, v1}, Lhzy;->a(Ljava/lang/String;)Lhzy;

    move-result-object v0

    .line 961
    invoke-virtual {v0, p0}, Lhzy;->b(Lhpw;)Lhzy;

    .line 962
    iget-object v0, p0, Letk;->s:Lbfd;

    if-eqz v0, :cond_0

    .line 963
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.loginToAccount using accountId"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 964
    iget-object v0, p0, Letk;->l:Lhzy;

    new-instance v1, Liaj;

    invoke-direct {v1}, Liaj;-><init>()V

    .line 965
    invoke-virtual {v1}, Liaj;->a()Liaj;

    move-result-object v1

    iget-object v2, p0, Letk;->s:Lbfd;

    .line 966
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Liaj;->a(I)Liaj;

    move-result-object v1

    .line 964
    invoke-virtual {v0, v1}, Lhzy;->a(Liaj;)V

    .line 973
    :goto_0
    return-void

    .line 968
    :cond_0
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.loginToAccount using accountName"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    iget-object v0, p0, Letk;->l:Lhzy;

    new-instance v1, Liaj;

    invoke-direct {v1}, Liaj;-><init>()V

    .line 970
    invoke-virtual {v1}, Liaj;->a()Liaj;

    move-result-object v1

    iget-object v2, p0, Letk;->t:Ljava/lang/String;

    .line 971
    invoke-virtual {v1, v2}, Liaj;->a(Ljava/lang/String;)Liaj;

    move-result-object v1

    .line 969
    invoke-virtual {v0, v1}, Lhzy;->a(Liaj;)V

    goto :goto_0
.end method

.method private r()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1067
    invoke-virtual {p0}, Letk;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1070
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    .line 1071
    invoke-virtual {v0}, Lesw;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1073
    iget-object v1, p0, Letk;->s:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    .line 1074
    invoke-virtual {v0}, Lesw;->d()Ljava/lang/String;

    move-result-object v2

    .line 1075
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v3

    .line 1076
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 1077
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    .line 20065
    const-string v1, "Babel_telephony"

    const-string v3, "TeleTychoController.getProxyNumber"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20066
    const-string v1, "babel_telephony_use_proxy_numbers_from_tycho"

    invoke-static {v0, v1, v8}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20069
    new-instance v1, Leux;

    invoke-direct {v1, v0, v2, p0}, Leux;-><init>(Landroid/content/Context;Ljava/lang/String;Levg;)V

    invoke-static {v0, v1}, Laal;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :goto_0
    return-void

    .line 20071
    :cond_0
    invoke-interface {p0, v8}, Levg;->a(I)V

    goto :goto_0

    .line 1079
    :cond_1
    const-string v4, "Babel_telephony"

    const-string v5, "TeleSetupController.performGetProxyNumber, invalid input, accountId: %d, destination number: %s, from number: %s"

    new-array v6, v9, [Ljava/lang/Object;

    .line 1080
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    .line 1081
    invoke-static {v2}, Laal;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v8

    const/4 v1, 0x2

    .line 1082
    invoke-static {v3}, Laal;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    .line 1079
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v4, v1, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1083
    invoke-direct {p0, v0}, Letk;->a(Lesw;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1084
    const-string v1, "Babel_telephony"

    const-string v0, "TeleSetupController.performGetProxyNumber, blocking possible non-free call to avoid paying roaming rates. "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1086
    invoke-static {v2}, Laal;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v2, v7, [Ljava/lang/Object;

    .line 1084
    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    invoke-direct {p0, v9}, Letk;->d(I)V

    goto :goto_0

    .line 1086
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1089
    :cond_3
    invoke-virtual {p0}, Letk;->m()V

    goto :goto_0

    .line 1093
    :cond_4
    invoke-virtual {p0}, Letk;->m()V

    goto :goto_0
.end method

.method private s()V
    .locals 8

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1099
    iget-boolean v3, p0, Letk;->p:Z

    .line 20144
    const-string v4, "Expected condition to be false"

    invoke-static {v4, v3}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 1100
    iget v3, p0, Letk;->m:I

    packed-switch v3, :pswitch_data_0

    .line 1126
    iget v1, p0, Letk;->m:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "unknown step: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhbs;->a(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p0, v2}, Letk;->a(Z)V

    .line 1128
    invoke-direct {p0, v0}, Letk;->d(I)V

    .line 24538
    :goto_0
    return-void

    .line 20516
    :pswitch_0
    const-string v0, "Babel_telephony"

    iget v1, p0, Letk;->j:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TeleSetupController.performStartStep, startReason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20518
    iget v0, p0, Letk;->j:I

    packed-switch v0, :pswitch_data_1

    .line 20530
    iget v0, p0, Letk;->j:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unknown start reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 20531
    sget v0, Laal;->qJ:I

    invoke-virtual {p0, v0}, Letk;->b(I)V

    goto :goto_0

    .line 20584
    :pswitch_1
    invoke-virtual {p0}, Letk;->d()Z

    move-result v0

    .line 21134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 20585
    new-instance v0, Lesq;

    iget-object v1, p0, Letk;->a:Landroid/content/Context;

    new-instance v2, Letm;

    invoke-direct {v2, p0}, Letm;-><init>(Letk;)V

    invoke-direct {v0, v1, v2}, Lesq;-><init>(Landroid/content/Context;Lesr;)V

    .line 20594
    invoke-virtual {v0}, Lesq;->a()V

    goto :goto_0

    .line 20523
    :pswitch_2
    invoke-virtual {p0}, Letk;->m()V

    goto :goto_0

    .line 22035
    :pswitch_3
    new-instance v0, Levm;

    invoke-direct {v0}, Levm;-><init>()V

    .line 20526
    const-string v1, "account_chooser"

    invoke-direct {p0, v0, v1}, Letk;->a(Lav;Ljava/lang/String;)V

    goto :goto_0

    .line 22896
    :pswitch_4
    invoke-direct {p0}, Letk;->p()V

    .line 22897
    invoke-virtual {p0}, Letk;->m()V

    goto :goto_0

    .line 22917
    :pswitch_5
    iget-object v0, p0, Letk;->s:Lbfd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Letk;->s:Lbfd;

    .line 22918
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Ldvd;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 22919
    :goto_1
    const-string v3, "Babel_telephony"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x37

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleSetupController.performSetupAccount, isReady: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22920
    iget-object v3, p0, Letk;->a:Landroid/content/Context;

    invoke-static {v3}, Laal;->k(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 22921
    const-string v0, "Babel_telephony"

    const-string v3, "TeleSetupController.performSetupAccount, not connected to internet"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 22924
    :cond_0
    if-eqz v0, :cond_2

    .line 22925
    invoke-direct {p0}, Letk;->o()V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 22918
    goto :goto_1

    .line 22932
    :cond_2
    const-string v0, "Babel_telephony"

    iget-object v3, p0, Letk;->s:Lbfd;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Letk;->t:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x41

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "TeleSetupController.setupOrLogin, selectedAccount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " , accountName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22934
    iget-object v0, p0, Letk;->s:Lbfd;

    if-nez v0, :cond_3

    iget-object v0, p0, Letk;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22935
    invoke-direct {p0}, Letk;->o()V

    goto/16 :goto_0

    .line 22937
    :cond_3
    iget-object v0, p0, Letk;->k:Limi;

    if-nez v0, :cond_4

    .line 22938
    iput-boolean v1, p0, Letk;->y:Z

    .line 22939
    invoke-direct {p0}, Letk;->n()V

    goto/16 :goto_0

    .line 22941
    :cond_4
    invoke-direct {p0}, Letk;->q()V

    goto/16 :goto_0

    .line 22976
    :pswitch_6
    iget-object v0, p0, Letk;->s:Lbfd;

    if-nez v0, :cond_6

    move v0, v2

    .line 22978
    :goto_2
    const-string v1, "Babel_telephony"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x47

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TeleSetupController.performUpdateGoogleVoiceStatus, status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22979
    if-nez v0, :cond_7

    .line 22980
    invoke-virtual {p0}, Letk;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Letk;->r:Z

    if-eqz v0, :cond_7

    .line 22981
    :cond_5
    sget v0, Laal;->qG:I

    invoke-direct {p0, v0}, Letk;->e(I)V

    .line 22982
    iget-object v0, p0, Letk;->s:Lbfd;

    .line 22983
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    new-instance v1, Levw;

    invoke-direct {v1, p0}, Levw;-><init>(Letk;)V

    .line 23063
    new-instance v2, Levu;

    invoke-direct {v2, v0, v1}, Levu;-><init>(ILevw;)V

    .line 22982
    iput-object v2, p0, Letk;->e:Levu;

    .line 23007
    iget-object v0, p0, Letk;->e:Levu;

    iget-object v1, p0, Letk;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Levu;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 22977
    :cond_6
    iget-object v0, p0, Letk;->s:Lbfd;

    invoke-virtual {v0}, Lbfd;->N()I

    move-result v0

    goto :goto_2

    .line 23009
    :cond_7
    invoke-virtual {p0}, Letk;->m()V

    goto/16 :goto_0

    .line 24014
    :pswitch_7
    iget-object v0, p0, Letk;->s:Lbfd;

    if-nez v0, :cond_8

    move v0, v2

    .line 24016
    :goto_3
    packed-switch v0, :pswitch_data_2

    .line 24049
    iget-object v0, p0, Letk;->s:Lbfd;

    invoke-virtual {v0}, Lbfd;->N()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown voice calling status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 24050
    invoke-virtual {p0}, Letk;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 24051
    invoke-virtual {p0, v2}, Letk;->a(Z)V

    .line 24052
    invoke-virtual {p0}, Letk;->m()V

    goto/16 :goto_0

    .line 24015
    :cond_8
    iget-object v0, p0, Letk;->s:Lbfd;

    invoke-virtual {v0}, Lbfd;->N()I

    move-result v0

    goto :goto_3

    .line 24018
    :pswitch_8
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.performGoogleVoiceTos, status is UNKNOWN"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24019
    invoke-virtual {p0}, Letk;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24020
    invoke-virtual {p0, v2}, Letk;->a(Z)V

    .line 24021
    invoke-virtual {p0}, Letk;->m()V

    goto/16 :goto_0

    .line 24023
    :cond_9
    sget v0, Laal;->qJ:I

    invoke-virtual {p0, v0}, Letk;->b(I)V

    goto/16 :goto_0

    .line 24027
    :pswitch_9
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.performGoogleVoiceTos, status is ALLOWED"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24028
    invoke-virtual {p0}, Letk;->m()V

    goto/16 :goto_0

    .line 24031
    :pswitch_a
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.performGoogleVoiceTos, status is NEED_TOS"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24032
    invoke-virtual {p0}, Letk;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24033
    invoke-virtual {p0, v2}, Letk;->a(Z)V

    .line 24034
    invoke-virtual {p0}, Letk;->m()V

    goto/16 :goto_0

    .line 24036
    :cond_a
    new-instance v0, Lewk;

    invoke-direct {v0}, Lewk;-><init>()V

    const-string v1, "tos"

    invoke-direct {p0, v0, v1}, Letk;->a(Lav;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 24040
    :pswitch_b
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.performGoogleVoiceTos, status is BLOCKED"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24041
    invoke-virtual {p0}, Letk;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24042
    invoke-virtual {p0, v2}, Letk;->a(Z)V

    .line 24043
    invoke-virtual {p0}, Letk;->m()V

    goto/16 :goto_0

    .line 24045
    :cond_b
    sget v0, Laal;->qK:I

    invoke-virtual {p0, v0}, Letk;->b(I)V

    goto/16 :goto_0

    .line 24054
    :cond_c
    sget v0, Laal;->qJ:I

    invoke-virtual {p0, v0}, Letk;->b(I)V

    goto/16 :goto_0

    .line 24545
    :pswitch_c
    invoke-virtual {p0}, Letk;->d()Z

    move-result v0

    if-nez v0, :cond_e

    move v1, v2

    .line 24537
    :cond_d
    :goto_4
    if-eqz v1, :cond_12

    .line 24569
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.performCreateHangoutId, Creating hangoutId..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24571
    new-instance v0, Letn;

    invoke-direct {v0, p0}, Letn;-><init>(Letk;)V

    .line 24572
    invoke-virtual {v0}, Letn;->b()V

    .line 24574
    iget-object v1, p0, Letk;->a:Landroid/content/Context;

    .line 25014
    new-instance v2, Lhiy;

    invoke-direct {v2, v1}, Lhiy;-><init>(Landroid/content/Context;)V

    .line 24575
    iget-object v1, p0, Letk;->s:Lbfd;

    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lhiy;->a(Ljava/lang/String;Lhjb;)V

    goto/16 :goto_0

    .line 24549
    :cond_e
    iget-boolean v0, p0, Letk;->r:Z

    if-nez v0, :cond_f

    .line 24550
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.shouldCreateHangoutId not using wifi for calls"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 24551
    goto :goto_4

    .line 24554
    :cond_f
    iget-object v0, p0, Letk;->B:Less;

    if-eqz v0, :cond_10

    iget-object v0, p0, Letk;->B:Less;

    iget-object v0, v0, Less;->a:Lerc;

    if-eqz v0, :cond_10

    iget-object v0, p0, Letk;->B:Less;

    iget-object v0, v0, Less;->a:Lerc;

    .line 24556
    invoke-virtual {v0}, Lerc;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 24557
    :cond_10
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.shouldCreateHangoutId no cell service"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 24558
    goto :goto_4

    .line 24561
    :cond_11
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0}, Lesw;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezm;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 24562
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.shouldCreateHangoutId emergency number"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 24563
    goto :goto_4

    .line 24540
    :cond_12
    invoke-virtual {p0}, Letk;->m()V

    goto/16 :goto_0

    .line 1120
    :pswitch_d
    invoke-direct {p0}, Letk;->r()V

    goto/16 :goto_0

    .line 1123
    :pswitch_e
    iget-boolean v2, p0, Letk;->r:Z

    if-eqz v2, :cond_13

    :goto_5
    invoke-direct {p0, v1}, Letk;->d(I)V

    goto/16 :goto_0

    :cond_13
    move v1, v0

    goto :goto_5

    .line 1100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 20518
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 24016
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 483
    iget-boolean v0, p0, Letk;->g:Z

    if-eqz v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 486
    :cond_0
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onGetProxyNumberFailed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-direct {p0, v0}, Letk;->a(Lesw;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    const-string v1, "Babel_telephony"

    const-string v0, "TeleSetupController.onGetProxyNumberFailed, blocking possible non-free call to avoid paying roaming rates. "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Letk;->b:Lerg;

    .line 492
    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0}, Lesw;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laal;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v2, v4, [Ljava/lang/Object;

    .line 490
    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Letk;->d(I)V

    goto :goto_0

    .line 492
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 495
    :cond_2
    invoke-virtual {p0}, Letk;->m()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 453
    iget-boolean v0, p0, Letk;->g:Z

    if-eqz v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 456
    :cond_0
    if-eq p1, v3, :cond_1

    .line 457
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onGetProxyNumberFailed, with error code %d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    invoke-virtual {p0}, Letk;->m()V

    goto :goto_0

    .line 461
    :cond_1
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onGetProxyNumberFailed, getting proxy number from Tycho not supported, using hangouts"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 465
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onGetProxyNumberFailed, no internet connection"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Letk;->b:Lerg;

    .line 467
    invoke-virtual {v0}, Lerg;->a()Leqp;

    move-result-object v0

    new-array v1, v3, [I

    const/16 v2, 0xcd

    aput v2, v1, v4

    .line 468
    invoke-virtual {v0, v1}, Leqp;->a([I)V

    .line 469
    invoke-virtual {p0}, Letk;->m()V

    goto :goto_0

    .line 473
    :cond_2
    new-instance v0, Lesz;

    iget-object v1, p0, Letk;->s:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    iget-object v2, p0, Letk;->b:Lerg;

    .line 474
    invoke-virtual {v2}, Lerg;->f()Lesw;

    move-result-object v2

    invoke-virtual {v2}, Lesw;->d()Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Letk;->b:Lerg;

    .line 477
    invoke-virtual {v4}, Lerg;->a()Leqp;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lesz;-><init>(ILjava/lang/String;Ljava/lang/String;Letb;Leqp;)V

    iput-object v0, p0, Letk;->u:Lesz;

    .line 478
    iget-object v0, p0, Letk;->u:Lesz;

    invoke-virtual {v0}, Lesz;->d()V

    goto :goto_0
.end method

.method a(II)V
    .locals 3

    .prologue
    .line 881
    iget-object v0, p0, Letk;->s:Lbfd;

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Letk;->s:Lbfd;

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    move v1, v0

    .line 884
    :goto_0
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    const-class v2, Lhba;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    .line 885
    invoke-interface {v0, p1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 886
    invoke-interface {v0}, Lhax;->c()Lhax;

    move-result-object v0

    iget-object v1, p0, Letk;->b:Lerg;

    .line 887
    invoke-virtual {v1}, Lerg;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhax;->e(Ljava/lang/String;)Lhax;

    move-result-object v0

    .line 889
    if-ltz p2, :cond_0

    .line 890
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lhax;->a(Ljava/lang/Integer;)Lhax;

    .line 892
    :cond_0
    invoke-interface {v0}, Lhax;->d()V

    .line 893
    return-void

    .line 883
    :cond_1
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    invoke-virtual {v0}, Leut;->b()I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public a(Lbfd;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 300
    if-eqz p1, :cond_3

    .line 301
    const-string v1, "Babel_telephony"

    const-string v2, "TeleSetupController.onAccountChooserDone, account: "

    .line 302
    invoke-static {p1}, Laal;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    .line 301
    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7252
    iput-object p1, p0, Letk;->s:Lbfd;

    .line 304
    iget-object v0, p0, Letk;->s:Lbfd;

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Ldvd;->h(I)Z

    move-result v0

    .line 305
    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Letk;->k:Limi;

    if-nez v0, :cond_1

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Letk;->y:Z

    .line 308
    invoke-direct {p0}, Letk;->n()V

    .line 319
    :goto_1
    return-void

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-direct {p0}, Letk;->q()V

    goto :goto_1

    .line 313
    :cond_2
    invoke-virtual {p0}, Letk;->m()V

    goto :goto_1

    .line 316
    :cond_3
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onAccountChooserDone, no account."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    sget v0, Laal;->qJ:I

    invoke-virtual {p0, v0}, Letk;->b(I)V

    goto :goto_1
.end method

.method a(Less;)V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 599
    iput-object p1, p0, Letk;->B:Less;

    .line 600
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    invoke-virtual {v0}, Leut;->e()Z

    move-result v3

    .line 601
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0, v3}, Lerg;->a(Z)V

    .line 605
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0, v1}, Lerg;->a(Z)V

    .line 9634
    :cond_0
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9639
    iget-object v0, p1, Less;->b:Leum;

    .line 10198
    const-string v4, "Expected non-null"

    invoke-static {v4, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9640
    iget-object v0, p1, Less;->c:Lest;

    .line 11198
    const-string v4, "Expected non-null"

    invoke-static {v4, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9641
    iget-object v0, p1, Less;->a:Lerc;

    if-nez v0, :cond_2

    .line 9642
    const-string v0, "Babel_telephony"

    iget-boolean v4, p1, Less;->g:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x48

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "TeleSetupController.isWifiCallPossible, no cell state, didTimeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    move v0, v2

    .line 609
    :goto_1
    if-nez v0, :cond_27

    .line 610
    invoke-virtual {p0, v2}, Letk;->a(Z)V

    .line 611
    invoke-virtual {p0}, Letk;->m()V

    .line 630
    :goto_2
    return-void

    .line 9647
    :cond_2
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9648
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, no permissions"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9652
    :cond_3
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    .line 9653
    invoke-virtual {v0}, Leut;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9654
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, wifi calling not enabled"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9658
    :cond_4
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    const-string v4, "babel_user_to_allow_wifi_calling_for"

    const-string v5, "tycho_users"

    invoke-static {v0, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9661
    const-string v4, "no_users"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9662
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, wifi calls disabled for all users by gservices"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9667
    :cond_5
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v0

    .line 9668
    const-string v4, "babel_outgoing_wifi_calls_allowed"

    invoke-interface {v0, v4, v1}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6

    .line 9670
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, outgoing wifi calls disabled by gservices"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9675
    :cond_6
    iget-object v4, p0, Letk;->b:Lerg;

    invoke-virtual {v4}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v4

    invoke-static {v4}, Leua;->a(Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 9676
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v4

    invoke-virtual {v4}, Lcfc;->m()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 9680
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, another hangout is in progress"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 9684
    :cond_7
    iget-object v4, p0, Letk;->b:Lerg;

    invoke-virtual {v4}, Lerg;->f()Lesw;

    move-result-object v4

    invoke-virtual {v4}, Lesw;->l()Z

    move-result v4

    if-nez v4, :cond_9

    .line 9685
    const-string v4, "Babel_telephony"

    const-string v5, "TeleSetupController.isWifiCallPossible, invalid phone number: "

    iget-object v0, p0, Letk;->b:Lerg;

    .line 9686
    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0}, Lesw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laal;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-array v5, v2, [Ljava/lang/Object;

    .line 9685
    invoke-static {v4, v0, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 9686
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 9690
    :cond_9
    iget-object v4, p0, Letk;->b:Lerg;

    invoke-virtual {v4}, Lerg;->f()Lesw;

    move-result-object v4

    invoke-virtual {v4}, Lesw;->m()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "babel_wifi_call_google_voice_app_integration_enabled"

    invoke-interface {v0, v4, v2}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a

    .line 9693
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, Google Voice app integration disabled by gservices"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 9699
    :cond_a
    iget-object v4, p1, Less;->c:Lest;

    iget-object v5, p0, Letk;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lest;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "babel_international_wifi_call_allowed"

    .line 9700
    invoke-interface {v0, v4, v1}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    .line 9703
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, wifi calling while international not allowed"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 9709
    :cond_b
    iget-object v4, p1, Less;->c:Lest;

    iget-object v5, p0, Letk;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lest;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p1, Less;->c:Lest;

    .line 9710
    invoke-virtual {v4}, Lest;->a()I

    move-result v4

    if-ne v4, v8, :cond_c

    const-string v4, "babel_roaming_wifi_call_allowed"

    .line 9711
    invoke-interface {v0, v4, v1}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c

    .line 9714
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, wifi calling while roaming not allowed"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 9719
    :cond_c
    iget-object v4, p0, Letk;->b:Lerg;

    invoke-virtual {v4}, Lerg;->f()Lesw;

    move-result-object v4

    invoke-virtual {v4}, Lesw;->n()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "babel_voicemail_wifi_call_allowed"

    invoke-interface {v0, v4, v1}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 9722
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, calling voicemail not allowed"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 9727
    :cond_d
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0}, Lesw;->c()Ljava/lang/String;

    move-result-object v0

    .line 9728
    iget-object v4, p1, Less;->c:Lest;

    iget-object v5, p0, Letk;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lest;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 9729
    invoke-static {v0}, Lezm;->j(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 9730
    const-string v4, "Babel_telephony"

    const-string v5, "TeleSetupController.isWifiCallPossible, emergency number cannot be on wifi when outside the US : "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 9739
    :cond_f
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->u()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 9741
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.shouldAllowRing, network was was choosen manually, only checking for Wi-Fi connection"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9743
    iget-object v0, p1, Less;->b:Leum;

    iget-boolean v0, v0, Leum;->a:Z

    if-nez v0, :cond_10

    .line 9744
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, not connected to wifi"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    move v0, v1

    .line 9747
    goto/16 :goto_1

    .line 9750
    :cond_11
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    iget-object v4, p0, Letk;->b:Lerg;

    .line 9751
    invoke-virtual {v4}, Lerg;->f()Lesw;

    move-result-object v4

    invoke-virtual {v4}, Lesw;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Less;->b:Leum;

    .line 9750
    invoke-static {v0, v4, v2, v5}, Lero;->a(Landroid/content/Context;Ljava/lang/String;ZLeum;)Lero;

    move-result-object v0

    iput-object v0, p0, Letk;->x:Lero;

    .line 9752
    iget-object v0, p0, Letk;->x:Lero;

    if-eqz v0, :cond_12

    .line 9753
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, in Wi-Fi calling experiment"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 9754
    goto/16 :goto_1

    .line 9757
    :cond_12
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0}, Lesw;->f()Ljava/lang/String;

    move-result-object v4

    .line 9758
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    iget-object v5, p1, Less;->c:Lest;

    iget-object v6, p1, Less;->a:Lerc;

    iget-object v7, p1, Less;->b:Leum;

    .line 12032
    iget-boolean v7, v7, Leum;->a:Z

    if-eqz v7, :cond_14

    .line 12033
    const-string v0, "Babel_telephony"

    const-string v5, "TeleWifiCallThreshold.shouldAllowOutgoingLteCall, connected to wifi"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 9758
    :goto_5
    if-nez v0, :cond_13

    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    iget-object v5, p1, Less;->c:Lest;

    iget-object v6, p1, Less;->a:Lerc;

    iget-object v7, p1, Less;->b:Leum;

    .line 12082
    iget-boolean v7, v7, Leum;->a:Z

    if-eqz v7, :cond_1a

    .line 12083
    const-string v0, "Babel_telephony"

    const-string v5, "TeleWifiCallThreshold.shouldAllowOutgoing3GCall, connected to wifi"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 9760
    :goto_6
    if-eqz v0, :cond_1f

    .line 9762
    :cond_13
    invoke-direct {p0, p1}, Letk;->b(Less;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 9763
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, data network latency high"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 12037
    :cond_14
    iget v6, v6, Lerc;->e:I

    const/16 v7, 0xd

    if-eq v6, v7, :cond_15

    .line 12038
    const-string v0, "Babel_telephony"

    const-string v5, "TeleWifiCallThreshold.shouldAllowOutgoingLteCall, not connected to LTE"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 12039
    goto :goto_5

    .line 12042
    :cond_15
    invoke-static {v0}, Laal;->k(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 12043
    const-string v0, "Babel_telephony"

    const-string v5, "TeleWifiCallThreshold.shouldAllowOutgoingLteCall, not connected to internet"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 12044
    goto :goto_5

    .line 12047
    :cond_16
    invoke-virtual {v5}, Lest;->c()I

    move-result v6

    if-ne v6, v8, :cond_17

    .line 12048
    invoke-static {v4}, Lezm;->j(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 12051
    const-string v6, "babel_lte_fallback_for_outgoing_tmobile_emergency_call"

    invoke-static {v0, v6, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 12054
    const-string v0, "Babel_telephony"

    const-string v5, "TeleWifiCallThreshold.shouldAllowOutgoingLteCall, falling back to LTE for emergency call over T-Mobile"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 12056
    goto :goto_5

    .line 12060
    :cond_17
    const-string v6, "babel_lte_outgoing_call_allowed"

    invoke-static {v0, v6, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 12062
    const-string v0, "Babel_telephony"

    const-string v5, "TeleWifiCallThreshold.shouldAllowOutgoingLteCall, LTE outgoing call allowed by default"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 12064
    goto :goto_5

    .line 12067
    :cond_18
    invoke-virtual {v5}, Lest;->c()I

    move-result v6

    invoke-static {v0, v6, v2}, Laal;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 12068
    const-string v0, "Babel_telephony"

    const-string v6, "TeleWifiCallThreshold.shouldAllowOutgoingLteCall,on carrier where we support voip calling over LTE, carrierId: "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 12070
    invoke-virtual {v5}, Lest;->c()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xb

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    .line 12068
    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 12071
    goto/16 :goto_5

    .line 12074
    :cond_19
    const-string v0, "Babel_telephony"

    const-string v5, "TeleWifiCallThreshold.shouldAllowOutgoingLteCall, returning false"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 12075
    goto/16 :goto_5

    .line 12087
    :cond_1a
    iget v6, v6, Lerc;->e:I

    invoke-static {v6}, Laal;->l(I)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 12088
    const-string v0, "Babel_telephony"

    const-string v5, "TeleWifiCallThreshold.shouldAllowOutgoing3GCall, not connected to 3G"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 12089
    goto/16 :goto_6

    .line 12092
    :cond_1b
    invoke-static {v0}, Laal;->k(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 12093
    const-string v0, "Babel_telephony"

    const-string v5, "TeleWifiCallThreshold.shouldAllowOutgoing3GCall, not connected to internet"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 12094
    goto/16 :goto_6

    .line 12097
    :cond_1c
    invoke-virtual {v5}, Lest;->c()I

    move-result v6

    invoke-static {v0, v6, v2}, Laal;->b(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 12098
    const-string v0, "Babel_telephony"

    const-string v6, "TeleWifiCallThreshold.shouldAllowOutgoing3GCall,on carrier where we support voip calling over 3G, carrierId: "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 12100
    invoke-virtual {v5}, Lest;->c()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xb

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    .line 12098
    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 12101
    goto/16 :goto_6

    .line 12104
    :cond_1d
    const-string v0, "Babel_telephony"

    const-string v5, "TeleWifiCallThreshold.shouldAllowIncoming3GCall, returning false"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 12105
    goto/16 :goto_6

    .line 9766
    :cond_1e
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, falling back to cellular data"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9767
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0, v1}, Lerg;->b(Z)V

    move v0, v1

    .line 9768
    goto/16 :goto_1

    .line 9771
    :cond_1f
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    iget-object v5, p0, Letk;->b:Lerg;

    .line 9772
    invoke-virtual {v5}, Lerg;->h()Lest;

    move-result-object v5

    iget-object v6, p1, Less;->a:Lerc;

    iget-object v7, p1, Less;->b:Leum;

    .line 9771
    invoke-static {v0, v5, v6, v7, v4}, Laal;->a(Landroid/content/Context;Lest;Lerc;Leum;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12794
    iget-object v0, p1, Less;->a:Lerc;

    invoke-virtual {v0}, Lerc;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 12795
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.hasNetworkQualityForWifiCall, no cell service, not checking herrevad"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    move v0, v1

    .line 9773
    :goto_8
    if-nez v0, :cond_24

    .line 9774
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, bad network quality score"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 12800
    :cond_20
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    .line 12801
    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    invoke-virtual {v0}, Leut;->b()I

    move-result v0

    .line 13492
    sget-object v4, Ldvp;->K:Ldml;

    invoke-virtual {v4, v0}, Ldml;->b(I)Z

    move-result v0

    .line 12802
    iget-object v4, p0, Letk;->a:Landroid/content/Context;

    iget-object v5, p1, Less;->c:Lest;

    iget-object v6, p1, Less;->d:Lcom/google/android/gms/herrevad/PredictedNetworkQuality;

    iget-object v7, p1, Less;->a:Lerc;

    invoke-static {v4, v5, v6, v7}, Laal;->a(Landroid/content/Context;Lest;Lcom/google/android/gms/herrevad/PredictedNetworkQuality;Lerc;)Z

    move-result v4

    .line 12804
    if-eqz v0, :cond_22

    .line 12805
    if-eqz v4, :cond_21

    .line 13877
    const/16 v0, 0xb4d

    invoke-virtual {p0, v0, v9}, Letk;->a(II)V

    goto :goto_7

    .line 14877
    :cond_21
    const/16 v0, 0xb4f

    invoke-virtual {p0, v0, v9}, Letk;->a(II)V

    .line 12810
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.hasNetworkQualityForWifiCall using cell due to bad herrevad network quality score for the wifi network"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 12812
    goto :goto_8

    .line 12815
    :cond_22
    if-eqz v4, :cond_23

    .line 15877
    const/16 v0, 0xb4e

    invoke-virtual {p0, v0, v9}, Letk;->a(II)V

    goto :goto_7

    .line 16877
    :cond_23
    const/16 v0, 0xb50

    invoke-virtual {p0, v0, v9}, Letk;->a(II)V

    goto :goto_7

    .line 17825
    :cond_24
    iget-object v0, p1, Less;->a:Lerc;

    invoke-virtual {v0}, Lerc;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 17826
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.shouldCheckStunPingLatency, not checking, no cell service"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 9778
    :goto_9
    if-eqz v0, :cond_26

    invoke-direct {p0, p1}, Letk;->b(Less;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 9779
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, poor stun latency on Wi-Fi"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_25
    move v0, v1

    .line 17831
    goto :goto_9

    .line 9783
    :cond_26
    const-string v0, "Babel_telephony"

    const-string v4, "TeleSetupController.isWifiCallPossible, good network, using Wi-Fi"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 9784
    goto/16 :goto_1

    .line 613
    :cond_27
    if-eqz v3, :cond_28

    .line 614
    const-string v0, "Babel_telephony"

    const-string v3, "TeleSetupController.performWifiChooserWithCellState, ask each call is enabled"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    iget-object v0, p1, Less;->a:Lerc;

    invoke-virtual {v0}, Lerc;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 617
    const-string v0, "Babel_telephony"

    const-string v3, "TeleSetupController.performWifiChooserWithCellState, no cell service, forcing wifi"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    :cond_28
    invoke-virtual {p0, v1}, Letk;->a(Z)V

    .line 627
    invoke-virtual {p0}, Letk;->m()V

    goto/16 :goto_2

    .line 18028
    :cond_29
    new-instance v0, Lewo;

    invoke-direct {v0}, Lewo;-><init>()V

    .line 622
    const-string v1, "wifi_chooser"

    invoke-direct {p0, v0, v1}, Letk;->a(Lav;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public a(Lhqe;Ldrz;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 376
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.processRegisterDeviceResponse"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    invoke-direct {p0}, Letk;->p()V

    .line 381
    iget-object v0, p0, Letk;->s:Lbfd;

    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "account_name"

    .line 382
    invoke-interface {p1, v1}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Letk;->s:Lbfd;

    .line 383
    invoke-virtual {v0}, Lbfd;->U()Ljava/lang/String;

    move-result-object v0

    const-string v1, "effective_gaia_id"

    .line 384
    invoke-interface {p1, v1}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    const-class v1, Lerm;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerm;

    invoke-virtual {v0, p0}, Lerm;->b(Lebb;)V

    .line 386
    iget-object v0, p0, Letk;->s:Lbfd;

    .line 7391
    invoke-static {}, Laal;->w()V

    .line 7392
    if-eqz v0, :cond_0

    iget-object v1, p0, Letk;->s:Lbfd;

    invoke-virtual {v0, v1}, Lbfd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7393
    iget-object v0, p0, Letk;->s:Lbfd;

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Ldvd;->h(I)Z

    move-result v0

    .line 7394
    const-string v1, "Babel_telephony"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x38

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleSetupController.accountSetupComplete, isReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7395
    iget-object v1, p0, Letk;->c:Landroid/os/Handler;

    iget-object v2, p0, Letk;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7396
    if-eqz v0, :cond_1

    .line 7397
    invoke-direct {p0}, Letk;->o()V

    :cond_0
    :goto_0
    return-void

    .line 7399
    :cond_1
    invoke-virtual {p0}, Letk;->k()V

    goto :goto_0
.end method

.method public a(Limi;Lhzy;)V
    .locals 2

    .prologue
    .line 255
    iget-boolean v0, p0, Letk;->p:Z

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Letk;->k:Limi;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Letk;->k:Limi;

    invoke-virtual {v0}, Limi;->finish()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Letk;->k:Limi;

    .line 4188
    const-string v1, "Expected null"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    iput-object p1, p0, Letk;->k:Limi;

    .line 263
    iput-object p2, p0, Letk;->l:Lhzy;

    .line 265
    iget-boolean v0, p0, Letk;->y:Z

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Letk;->n:Lav;

    .line 5188
    const-string v1, "Expected null"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Letk;->o:Ljava/lang/String;

    .line 6188
    const-string v1, "Expected null"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Letk;->y:Z

    .line 269
    invoke-direct {p0}, Letk;->q()V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Letk;->n:Lav;

    .line 6198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Letk;->o:Ljava/lang/String;

    .line 7198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Letk;->n:Lav;

    iget-object v1, p0, Letk;->o:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Letk;->a(Lav;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 441
    iget-boolean v0, p0, Letk;->g:Z

    if-eqz v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 444
    :cond_0
    const-string v1, "Babel_telephony"

    const-string v2, "TeleSetupController.onGetProxyNumberSucceeded, proxy number: "

    .line 445
    invoke-static {p1}, Laal;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 444
    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8198
    const-string v0, "Expected non-null"

    invoke-static {v0, p1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lesw;->a(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Letk;->m()V

    goto :goto_0

    .line 445
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1331
    const-string v1, "Babel_telephony"

    const-string v2, "TeleSetupController.performShowDialogFailedAction, performing action: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1333
    const-string v0, "cellular"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1334
    invoke-virtual {p0, v4}, Letk;->a(Z)V

    .line 1335
    invoke-direct {p0, v5}, Letk;->d(I)V

    .line 1346
    :goto_1
    return-void

    .line 1331
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1336
    :cond_1
    const-string v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1337
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1338
    :cond_2
    const-string v0, "cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1339
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Letk;->d(I)V

    goto :goto_1

    .line 1341
    :cond_3
    const-string v1, "Babel_telephony"

    const-string v2, "TeleSetupController.performShowDialogFailedAction, unknown action: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1343
    invoke-virtual {p0, v4}, Letk;->a(Z)V

    .line 1344
    invoke-direct {p0, v5}, Letk;->d(I)V

    goto :goto_1

    .line 1341
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 1239
    iput-boolean p1, p0, Letk;->r:Z

    .line 1240
    invoke-virtual {p0}, Letk;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    if-eqz p1, :cond_1

    .line 1242
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->c()V

    .line 1243
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->w()V

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->b()V

    .line 1246
    iget-object v0, p0, Letk;->b:Lerg;

    invoke-virtual {v0}, Lerg;->x()V

    goto :goto_0
.end method

.method public a(ZLhpv;Lhpv;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 368
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onAccountHandlerStateTransition, %s -> %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    return-void
.end method

.method b()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Letk;->s()V

    .line 195
    return-void
.end method

.method public b(I)V
    .locals 4

    .prologue
    .line 1279
    sget v1, Laal;->qM:I

    .line 26283
    const/4 v0, 0x0

    .line 26284
    iget-object v2, p0, Letk;->k:Limi;

    if-eqz v2, :cond_0

    .line 26285
    iget-object v0, p0, Letk;->k:Limi;

    invoke-virtual {v0}, Limi;->C_()Lbg;

    move-result-object v0

    .line 26286
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    check-cast v0, Levx;

    .line 26290
    :cond_0
    if-nez v0, :cond_1

    .line 26291
    iget-object v0, p0, Letk;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Letk;->a:Landroid/content/Context;

    .line 26292
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 27026
    new-instance v2, Levx;

    invoke-direct {v2}, Levx;-><init>()V

    .line 27027
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3}, Levx;->setArguments(Landroid/os/Bundle;)V

    .line 27028
    invoke-virtual {v2, v0}, Levx;->a(Ljava/lang/String;)V

    .line 27029
    invoke-virtual {v2, v1}, Levx;->b(Ljava/lang/String;)V

    .line 26293
    const-string v0, "message"

    invoke-direct {p0, v2, v0}, Letk;->a(Lav;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 26295
    :cond_1
    iget-object v2, p0, Letk;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Levx;->a(Ljava/lang/String;)V

    .line 26296
    iget-object v1, p0, Letk;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Levx;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Letk;->A:Ljava/lang/String;

    .line 581
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Letk;->d(I)V

    .line 199
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 202
    iget v1, p0, Letk;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 279
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onActivityDestroyed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Letk;->k:Limi;

    .line 281
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Letk;->d(I)V

    .line 282
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 286
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onWifiChooserWifiChosen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Letk;->a(Z)V

    .line 288
    invoke-virtual {p0}, Letk;->m()V

    .line 289
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onWifiChooserCellularChosen"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p0, v3}, Letk;->a(Z)V

    .line 295
    invoke-virtual {p0}, Letk;->m()V

    .line 296
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 323
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onAccountChooserCancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Letk;->d(I)V

    .line 325
    return-void
.end method

.method public i()V
    .locals 4

    .prologue
    .line 329
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onTosAccepted"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    sget v0, Laal;->qD:I

    invoke-direct {p0, v0}, Letk;->e(I)V

    .line 331
    iget-object v0, p0, Letk;->s:Lbfd;

    .line 332
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    new-instance v1, Levt;

    invoke-direct {v1, p0}, Levt;-><init>(Letk;)V

    .line 7356
    new-instance v2, Levr;

    iget-object v3, p0, Letk;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Levr;-><init>(Landroid/content/Context;ILevt;)V

    .line 331
    iput-object v2, p0, Letk;->f:Levr;

    .line 351
    iget-object v0, p0, Letk;->f:Levr;

    invoke-virtual {v0}, Levr;->d()V

    .line 352
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    .line 361
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onTosDeclined"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Letk;->d(I)V

    .line 363
    return-void
.end method

.method k()V
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0}, Letk;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Letk;->a(Z)V

    .line 433
    invoke-virtual {p0}, Letk;->m()V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    sget v0, Laal;->qL:I

    invoke-virtual {p0, v0}, Letk;->b(I)V

    goto :goto_0
.end method

.method public l()V
    .locals 3

    .prologue
    .line 511
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onMessageDone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Letk;->d(I)V

    .line 513
    return-void
.end method

.method public m()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1134
    const-string v0, "Babel_telephony"

    iget v1, p0, Letk;->m:I

    invoke-static {v1}, Letk;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Letk;->m:I

    add-int/lit8 v2, v2, 0x1

    .line 1135
    invoke-static {v2}, Letk;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x29

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TeleSetupController.advanceNextStep, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    .line 1134
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    const-string v1, "Babel_telephony"

    const-string v2, "selectedAccount: "

    iget-object v0, p0, Letk;->s:Lbfd;

    invoke-static {v0}, Laal;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1137
    iget v0, p0, Letk;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Letk;->m:I

    .line 1138
    invoke-direct {p0}, Letk;->s()V

    .line 1139
    return-void

    .line 1136
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
