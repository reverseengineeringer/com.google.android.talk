.class public abstract Ldom;
.super Liii;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RQ:",
        "Llyi;",
        "RS:",
        "Llyi;",
        ">",
        "Liii",
        "<TRQ;TRS;>;"
    }
.end annotation


# static fields
.field private static final a:Z

.field public static final c:Ljava/lang/String;


# instance fields
.field private b:Ldqf;

.field public final d:Lihp;

.field public final e:Leff;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lezi;->l:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Ldom;->a:Z

    .line 76
    const-string v0, "oauth2:https://www.googleapis.com/auth/chat https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/plus.peopleapi.readwrite https://www.googleapis.com/auth/hangouts https://www.googleapis.com/auth/identity.plus.page.impersonation  https://www.googleapis.com/auth/chat.native"

    .line 79
    :try_start_0
    const-string v1, "com.google.android.apps.hangouts.defaultbuild.EsProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    sput-object v0, Ldom;->c:Ljava/lang/String;

    .line 87
    return-void

    .line 83
    :catch_0
    move-exception v0

    const-string v0, "oauth2:https://www.googleapis.com/auth/chat https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/plus.peopleapi.readwrite https://www.googleapis.com/auth/hangouts https://www.googleapis.com/auth/identity.plus.page.impersonation "

    goto :goto_0
.end method

.method public constructor <init>(Lihw;Leff;Ljava/lang/String;Lefh;Llyi;Llyi;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lihw;",
            "Leff;",
            "Ljava/lang/String;",
            "Lefh;",
            "TRQ;TRS;)V"
        }
    .end annotation

    .prologue
    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 104
    invoke-virtual {p4}, Lefh;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ldom;->c:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 99
    invoke-direct/range {v0 .. v7}, Liii;-><init>(Landroid/content/Context;Lihw;Ljava/lang/String;Llyi;Llyi;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p2, p0, Ldom;->e:Leff;

    .line 1266
    iget-object v0, p0, Lihi;->h:Lihw;

    .line 108
    invoke-virtual {v0}, Lihw;->f()Lihp;

    move-result-object v0

    iput-object v0, p0, Ldom;->d:Lihp;

    .line 109
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 145
    if-nez p0, :cond_1

    .line 146
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot use null conversation id:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    if-eqz p0, :cond_3

    invoke-static {p0}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot use client generated conversation id:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_3
    return-void
.end method


# virtual methods
.method public abstract a(Llyi;)Ldqf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRS;)",
            "Ldqf;"
        }
    .end annotation
.end method

.method public final a(Ldmm;)Lkdo;
    .locals 6

    .prologue
    .line 130
    invoke-virtual {p1}, Ldmm;->a()Ljxk;

    move-result-object v1

    invoke-virtual {p1}, Ldmm;->b()Z

    move-result v2

    invoke-virtual {p1}, Ldmm;->c()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p1}, Ldmm;->d()I

    move-result v4

    iget-object v0, p0, Ldom;->g:Landroid/content/Context;

    const-class v5, Lfak;

    invoke-static {v0, v5}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfak;

    .line 129
    invoke-static {v1, v2, v3, v4, v0}, Ldon;->a(Ljxk;ZLjava/lang/String;ILfak;)Lkdo;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Ldmm;->f()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 134
    invoke-virtual {p1}, Ldmm;->e()I

    move-result v1

    invoke-static {v0, v1}, Ldon;->a(Lkdo;I)Lkdo;

    move-result-object v0

    .line 137
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 166
    const-string v0, "SMS"

    .line 2266
    iget-object v1, p0, Lihi;->h:Lihw;

    .line 167
    invoke-virtual {v1}, Lihw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 168
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Cannot send request for SMS only account: "

    .line 169
    invoke-virtual {p0}, Ldom;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    :goto_1
    invoke-static {v0, v1}, Laen;->b(ZLjava/lang/Object;)V

    .line 170
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 275
    instance-of v0, p1, Ldvn;

    if-eqz v0, :cond_0

    .line 276
    check-cast p1, Ldvn;

    throw p1

    .line 277
    :cond_0
    instance-of v0, p1, Ljava/io/EOFException;

    if-eqz v0, :cond_1

    .line 278
    new-instance v0, Ldvn;

    const/16 v1, 0x67

    invoke-direct {v0, v1, p1}, Ldvn;-><init>(ILjava/lang/Exception;)V

    throw v0

    .line 279
    :cond_1
    invoke-virtual {p0, p1}, Ldom;->c(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    new-instance v0, Ldvn;

    const/16 v1, 0x68

    invoke-direct {v0, v1, p1}, Ldvn;-><init>(ILjava/lang/Exception;)V

    throw v0

    :cond_2
    move-object v0, p1

    .line 3948
    :goto_0
    if-eqz v0, :cond_4

    .line 3949
    instance-of v1, v0, Landroid/accounts/AuthenticatorException;

    if-eqz v1, :cond_3

    .line 3950
    const/4 v0, 0x1

    .line 281
    :goto_1
    if-eqz v0, :cond_5

    .line 282
    new-instance v0, Ldvn;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p1}, Ldvn;-><init>(ILjava/lang/Exception;)V

    throw v0

    .line 3952
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 3954
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 284
    :cond_5
    new-instance v0, Ldvn;

    const/16 v1, 0x66

    invoke-direct {v0, v1, p1}, Ldvn;-><init>(ILjava/lang/Exception;)V

    throw v0
.end method

.method public final a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Liii;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 2337
    iget v0, p0, Lihi;->k:I

    .line 2351
    iget-object v1, p0, Lihi;->m:Ljava/lang/Exception;

    .line 3344
    iget-object v2, p0, Lihi;->l:Ljava/lang/String;

    .line 245
    invoke-static {v0, v1, v2}, Ldvn;->a(ILjava/lang/Exception;Ljava/lang/String;)Ldvn;

    move-result-object v0

    throw v0
.end method

.method public b(Llyi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRQ;)V"
        }
    .end annotation

    .prologue
    .line 155
    sget-boolean v0, Ldom;->a:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    return-void
.end method

.method protected final c(Llyi;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRS;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x3e8

    const/16 v10, 0x6c

    const/4 v9, 0x0

    .line 175
    invoke-virtual {p0, p1}, Ldom;->a(Llyi;)Ldqf;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldqf;->a()Ldsf;

    move-result-object v1

    if-nez v1, :cond_1

    .line 179
    :cond_0
    new-instance v0, Ldvn;

    const/16 v1, 0x6a

    const-string v2, "Response error: NULL_RESPONSE/RESPONSE_INVALID"

    invoke-direct {v0, v1, v2}, Ldvn;-><init>(ILjava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    invoke-virtual {v0}, Ldqf;->a()Ldsf;

    move-result-object v1

    iget v1, v1, Ldsf;->b:I

    .line 184
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 185
    const-string v2, "Babel_ServerOperation"

    iget-object v3, p0, Ldom;->e:Leff;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-virtual {v0}, Ldqf;->a()Ldsf;

    move-result-object v4

    iget-object v4, v4, Ldsf;->a:Ljava/lang/String;

    .line 187
    invoke-virtual {v0}, Ldqf;->a()Ldsf;

    move-result-object v5

    iget-object v5, v5, Ldsf;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3d

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Request sent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " got responseStatus "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " desc "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " debug_url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    .line 185
    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 224
    const-string v2, "Babel_ServerOperation"

    iget-object v3, v0, Ldqf;->c:Ldsf;

    if-eqz v3, :cond_4

    .line 227
    iget-object v0, v0, Ldqf;->c:Ldsf;

    iget-object v0, v0, Ldsf;->c:Ljava/lang/String;

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x47

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "got unknown ResponseStatus in response header "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; debugUrl is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    .line 224
    invoke-static {v2, v0, v1}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    new-instance v0, Ldvn;

    const-string v1, "Resonse error: ERROR_UNEXPECTED"

    invoke-direct {v0, v10, v1}, Ldvn;-><init>(ILjava/lang/String;)V

    throw v0

    .line 188
    :cond_3
    sget-boolean v2, Ldom;->a:Z

    if-eqz v2, :cond_2

    .line 189
    iget-object v2, p0, Ldom;->e:Leff;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x29

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "client request sent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " got client response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 197
    :pswitch_0
    new-instance v0, Ldvn;

    const/16 v1, 0x6b

    const-string v2, "Response error: ERROR_BUSY"

    invoke-direct {v0, v1, v2}, Ldvn;-><init>(ILjava/lang/String;)V

    throw v0

    .line 200
    :pswitch_1
    new-instance v0, Ldvn;

    const-string v1, "Response error: ERROR_UNEXPECTED"

    invoke-direct {v0, v10, v1}, Ldvn;-><init>(ILjava/lang/String;)V

    throw v0

    .line 203
    :pswitch_2
    new-instance v0, Ldvn;

    const/16 v1, 0x6f

    const-string v2, "Response error: ERROR_INVALID_REQUEST"

    invoke-direct {v0, v1, v2}, Ldvn;-><init>(ILjava/lang/String;)V

    throw v0

    .line 206
    :pswitch_3
    new-instance v0, Ldvn;

    const/16 v1, 0x6d

    const-string v2, "Response error: ERROR_RETRY_LIMIT"

    invoke-direct {v0, v1, v2}, Ldvn;-><init>(ILjava/lang/String;)V

    throw v0

    .line 218
    :pswitch_4
    new-instance v0, Ldvn;

    const/16 v1, 0x70

    const-string v2, "Response error: ERROR_QUOTA_EXCEEDED"

    invoke-direct {v0, v1, v2}, Ldvn;-><init>(ILjava/lang/String;)V

    throw v0

    .line 221
    :pswitch_5
    new-instance v0, Ldvn;

    const/16 v1, 0x71

    const-string v2, "Response error: ERROR_RESPONSE_NOT_FOUND"

    invoke-direct {v0, v1, v2}, Ldvn;-><init>(ILjava/lang/String;)V

    throw v0

    .line 227
    :cond_4
    const-string v0, "(null)"

    goto/16 :goto_1

    .line 232
    :pswitch_6
    iget-object v1, p0, Ldom;->e:Leff;

    invoke-virtual {v0, v1}, Ldqf;->a(Leff;)V

    .line 233
    iget-object v1, p0, Ldom;->d:Lihp;

    if-eqz v1, :cond_5

    .line 234
    iget-object v1, p0, Ldom;->d:Lihp;

    invoke-virtual {v1}, Lihp;->f()J

    move-result-wide v2

    mul-long/2addr v2, v12

    invoke-virtual {v0, v2, v3}, Ldqf;->a(J)V

    .line 237
    iget-object v1, p0, Ldom;->d:Lihp;

    invoke-virtual {v1}, Lihp;->h()J

    move-result-wide v2

    mul-long/2addr v2, v12

    invoke-virtual {v0, v2, v3}, Ldqf;->b(J)V

    .line 239
    :cond_5
    iput-object v0, p0, Ldom;->b:Ldqf;

    .line 240
    return-void

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public d()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    const-string v1, "alt"

    const-string v2, "proto"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-object v0
.end method

.method public e()Ldqf;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ldom;->b:Ldqf;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Ldom;->g()V

    .line 268
    invoke-virtual {p0}, Ldom;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3351
    iget-object v0, p0, Lihi;->m:Ljava/lang/Exception;

    .line 269
    invoke-virtual {p0, v0}, Ldom;->a(Ljava/lang/Exception;)V

    .line 271
    :cond_0
    return-void
.end method
