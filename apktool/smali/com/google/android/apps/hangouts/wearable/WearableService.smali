.class public Lcom/google/android/apps/hangouts/wearable/WearableService;
.super Lgsc;
.source "SourceFile"


# instance fields
.field private e:Lefk;

.field private f:Lhba;

.field private g:Lbcm;

.field private h:Lffe;

.field private i:Leat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lgsc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgrl;)V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p1}, Lfkg;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgrk;

    .line 82
    invoke-interface {v0}, Lgrk;->W_()Lgrm;

    move-result-object v0

    .line 83
    const-string v2, "/hangouts/api_level/"

    invoke-interface {v0}, Lgrm;->U_()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->h:Lffe;

    invoke-static {v0}, Lffe;->a(Lgrm;)I

    move-result v0

    invoke-virtual {v2, v0}, Lffe;->a(I)V

    goto :goto_0

    .line 87
    :cond_1
    return-void
.end method

.method public a(Lgru;)V
    .locals 14

    .prologue
    const/high16 v7, 0x10000000

    const/4 v8, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 91
    invoke-interface {p1}, Lgru;->a()Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string v2, "Babel_WearableService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const-string v2, "WearableService.onMessageReceived: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->h:Lffe;

    invoke-virtual {v2}, Lffe;->f()Ljava/lang/String;

    move-result-object v2

    .line 96
    const-string v3, "/hangouts/rpc/send_message/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    invoke-interface {p1}, Lgru;->b()[B

    move-result-object v0

    invoke-static {v0}, Lgrp;->a([B)Lgrp;

    move-result-object v6

    .line 98
    invoke-static {v2}, Lffe;->b(Ljava/lang/String;)Lbfd;

    move-result-object v1

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->e:Lefk;

    const-string v2, "7"

    .line 101
    invoke-virtual {v6, v2}, Lgrp;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    .line 102
    invoke-virtual {v6, v3}, Lgrp;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "17"

    .line 110
    invoke-virtual {v6, v7}, Lgrp;->b(Ljava/lang/String;)Z

    move-result v11

    move-object v6, v4

    move v7, v5

    move v8, v5

    move-object v9, v4

    move-object v10, v4

    move-object v12, v4

    move v13, v5

    .line 99
    invoke-interface/range {v0 .. v13}, Lefk;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;I)Ljava/lang/String;

    .line 187
    :goto_1
    return-void

    .line 93
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    const-string v3, "/hangouts/rpc/switch_account/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    invoke-interface {p1}, Lgru;->b()[B

    move-result-object v0

    invoke-static {v0}, Lgrp;->a([B)Lgrp;

    move-result-object v0

    .line 115
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lgrp;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    iget-object v1, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->h:Lffe;

    invoke-virtual {v1, v0}, Lffe;->a(Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->g:Lbcm;

    new-instance v1, Lfev;

    invoke-direct {v1}, Lfev;-><init>()V

    invoke-interface {v0, v1}, Lbcm;->a(Lbcn;)Lbcg;

    goto :goto_1

    .line 117
    :cond_3
    const-string v3, "/hangouts/rpc/update_watermark/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 118
    invoke-interface {p1}, Lgru;->b()[B

    move-result-object v0

    invoke-static {v0}, Lgrp;->a([B)Lgrp;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->i:Leat;

    .line 120
    invoke-static {v2}, Lffe;->b(Ljava/lang/String;)Lbfd;

    move-result-object v2

    const-string v3, "7"

    .line 121
    invoke-virtual {v0, v3}, Lgrp;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "26"

    .line 122
    invoke-virtual {v0, v4}, Lgrp;->e(Ljava/lang/String;)J

    move-result-wide v4

    .line 119
    invoke-interface {v1, v2, v3, v4, v5}, Leat;->a(Lbfd;Ljava/lang/String;J)V

    goto :goto_1

    .line 123
    :cond_4
    const-string v3, "/hangouts/rpc/open_home/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 126
    invoke-static {v2}, Lffe;->b(Ljava/lang/String;)Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 125
    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/wearable/WearableService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 129
    :cond_5
    const-string v3, "/hangouts/rpc/open_conversation/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 130
    invoke-interface {p1}, Lgru;->b()[B

    move-result-object v0

    invoke-static {v0}, Lgrp;->a([B)Lgrp;

    move-result-object v0

    .line 131
    const-string v1, "7"

    invoke-virtual {v0, v1}, Lgrp;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v2}, Lffe;->b(Ljava/lang/String;)Lbfd;

    move-result-object v1

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    .line 133
    invoke-static {p0, v1, v0, v4}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/wearable/WearableService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 137
    :cond_6
    const-string v3, "/hangouts/rpc/resend_message/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 138
    invoke-interface {p1}, Lgru;->b()[B

    move-result-object v0

    invoke-static {v0}, Lgrp;->a([B)Lgrp;

    move-result-object v0

    .line 139
    const-string v1, "7"

    invoke-virtual {v0, v1}, Lgrp;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string v3, "12"

    invoke-virtual {v0, v3}, Lgrp;->e(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 141
    iget-object v3, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->i:Leat;

    .line 142
    invoke-static {v2}, Lffe;->b(Ljava/lang/String;)Lbfd;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Long;

    aput-object v0, v4, v5

    .line 141
    invoke-interface {v3, v2, v4, v1}, Leat;->a(Lbfd;[Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 143
    :cond_7
    const-string v3, "/hangouts/rpc/delete_message/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 144
    invoke-interface {p1}, Lgru;->b()[B

    move-result-object v0

    invoke-static {v0}, Lgrp;->a([B)Lgrp;

    move-result-object v0

    .line 145
    const-string v1, "12"

    invoke-virtual {v0, v1}, Lgrp;->e(Ljava/lang/String;)J

    move-result-wide v0

    .line 146
    iget-object v3, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->i:Leat;

    invoke-static {v2}, Lffe;->b(Ljava/lang/String;)Lbfd;

    move-result-object v2

    new-array v4, v8, [J

    aput-wide v0, v4, v5

    invoke-interface {v3, v2, v4}, Leat;->a(Lbfd;[J)V

    goto/16 :goto_1

    .line 147
    :cond_8
    const-string v3, "/hangouts/rpc/request_more_messages/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 148
    invoke-interface {p1}, Lgru;->c()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-interface {p1}, Lgru;->b()[B

    move-result-object v3

    invoke-static {v3}, Lgrp;->a([B)Lgrp;

    move-result-object v3

    .line 150
    const-string v4, "7"

    invoke-virtual {v3, v4}, Lgrp;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    const-string v5, "19"

    invoke-virtual {v3, v5}, Lgrp;->c(Ljava/lang/String;)I

    move-result v3

    .line 152
    iget-object v5, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->g:Lbcm;

    new-instance v6, Lfey;

    invoke-direct {v6, v1, v4, v3}, Lfey;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Lbcm;->a(Lbcn;)Lbcg;

    .line 153
    invoke-static {v2}, Lffe;->b(Ljava/lang/String;)Lbfd;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v0

    .line 155
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->f:Lhba;

    invoke-interface {v1, v0}, Lhba;->a(I)Lhaw;

    move-result-object v0

    .line 156
    const/16 v1, 0x8be

    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Lhax;->d()V

    goto/16 :goto_1

    .line 158
    :cond_a
    const-string v3, "/hangouts/rpc/log_impression/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 159
    invoke-interface {p1}, Lgru;->b()[B

    move-result-object v1

    invoke-static {v1}, Lgrp;->a([B)Lgrp;

    move-result-object v1

    .line 160
    const-string v3, "13"

    invoke-virtual {v1, v3}, Lgrp;->c(Ljava/lang/String;)I

    move-result v3

    .line 161
    invoke-static {v2}, Lffe;->b(Ljava/lang/String;)Lbfd;

    move-result-object v2

    .line 162
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v0

    .line 163
    :cond_b
    iget-object v2, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->f:Lhba;

    invoke-interface {v2, v0}, Lhba;->a(I)Lhaw;

    move-result-object v0

    .line 164
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 179
    :pswitch_0
    invoke-interface {v0, v3}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    goto/16 :goto_1

    .line 166
    :pswitch_1
    const-string v2, "20"

    invoke-virtual {v1, v2}, Lgrp;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    const-string v4, "29"

    invoke-virtual {v1, v4}, Lgrp;->e(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v1, v4

    .line 168
    invoke-interface {v0, v3}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 169
    invoke-interface {v0, v2}, Lhax;->a(Ljava/lang/String;)Lhax;

    move-result-object v0

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lhax;->a(Ljava/lang/Integer;)Lhax;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Lhax;->d()V

    goto/16 :goto_1

    .line 174
    :pswitch_2
    const-string v2, "20"

    invoke-virtual {v1, v2}, Lgrp;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-interface {v0, v3}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0, v1}, Lhax;->a(Ljava/lang/String;)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    goto/16 :goto_1

    .line 185
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->g:Lbcm;

    new-instance v1, Lfev;

    invoke-direct {v1}, Lfev;-><init>()V

    invoke-interface {v0, v1}, Lbcm;->a(Lbcn;)Lbcg;

    goto/16 :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x8b6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Lgsc;->onCreate()V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/wearable/WearableService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v1

    .line 61
    const-class v0, Lffi;

    invoke-virtual {v1, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lffi;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/wearable/WearableService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lffi;->a(Landroid/content/Context;)Lffe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->h:Lffe;

    .line 62
    const-class v0, Lbcm;

    invoke-virtual {v1, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcm;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->g:Lbcm;

    .line 63
    const-class v0, Lefk;

    invoke-virtual {v1, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefk;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->e:Lefk;

    .line 64
    const-class v0, Lhba;

    invoke-virtual {v1, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->f:Lhba;

    .line 65
    const-class v0, Leat;

    invoke-virtual {v1, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leat;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->i:Leat;

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lgsc;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/hangouts/wearable/WearableService;->h:Lffe;

    invoke-virtual {v0}, Lffe;->e()V

    .line 72
    return-void
.end method
