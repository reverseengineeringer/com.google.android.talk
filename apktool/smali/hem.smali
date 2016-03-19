.class final Lhem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbp;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhbp",
        "<",
        "Lkiz;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhel;

.field private final b:Lhca;

.field private final c:Lkju;

.field private final d:Lmdx;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lhel;Lhca;Lkju;Lmdx;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lhem;->a:Lhel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lhem;->b:Lhca;

    .line 90
    iput-object p3, p0, Lhem;->c:Lkju;

    .line 91
    iput-object p4, p0, Lhem;->d:Lmdx;

    .line 92
    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;)V
    .locals 3

    .prologue
    .line 3136
    const-string v0, "vclib"

    const-string v1, "LogData upload succeeded."

    .line 4081
    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3138
    iget-object v0, p0, Lhem;->b:Lhca;

    iget-object v1, p0, Lhem;->a:Lhel;

    .line 5031
    iget-object v1, v1, Lhel;->a:Landroid/content/Context;

    .line 3138
    iget-object v2, p0, Lhem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lhca;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public synthetic b(Llyi;)V
    .locals 4

    .prologue
    .line 82
    check-cast p1, Lkiz;

    .line 5143
    const-string v0, "vclib"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "LogData upload failed!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 5144
    iget-object v0, p0, Lhem;->b:Lhca;

    iget-object v1, p0, Lhem;->a:Lhel;

    .line 7031
    iget-object v1, v1, Lhel;->a:Landroid/content/Context;

    .line 5144
    iget-object v2, p0, Lhem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lhca;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 96
    const-string v0, "vclib"

    const-string v1, "Beginning LogData upload."

    .line 1081
    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    :try_start_0
    iget-object v0, p0, Lhem;->b:Lhca;

    iget-object v1, p0, Lhem;->a:Lhel;

    .line 2031
    iget-object v1, v1, Lhel;->a:Landroid/content/Context;

    .line 98
    const-string v2, "oauth2:https://www.googleapis.com/auth/hangouts "

    invoke-virtual {v0, v1, v2}, Lhca;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhem;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lfgj; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    new-instance v0, Ljxm;

    invoke-direct {v0}, Ljxm;-><init>()V

    .line 110
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljxm;->a:Ljava/lang/Integer;

    .line 111
    iget-object v1, p0, Lhem;->a:Lhel;

    .line 3031
    iget-object v1, v1, Lhel;->a:Landroid/content/Context;

    .line 111
    invoke-static {v1}, Lcom/google/android/libraries/hangouts/video/internal/CallService;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljxm;->d:Ljava/lang/Long;

    .line 114
    new-instance v1, Ljxj;

    invoke-direct {v1}, Ljxj;-><init>()V

    .line 116
    iget-object v2, p0, Lhem;->a:Lhel;

    iget-object v3, p0, Lhem;->e:Ljava/lang/String;

    iget-object v4, p0, Lhem;->d:Lmdx;

    .line 117
    invoke-virtual {v2, v3, v0, v1, v4}, Lhel;->a(Ljava/lang/String;Ljxm;Ljxj;Lmdx;)Lhbl;

    move-result-object v0

    .line 118
    new-instance v2, Lkiy;

    invoke-direct {v2}, Lkiy;-><init>()V

    .line 122
    iget-object v1, p0, Lhem;->c:Lkju;

    iget-object v1, v1, Lkju;->f:Ljui;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lhem;->c:Lkju;

    iget-object v1, v1, Lkju;->f:Ljui;

    iget-object v1, v1, Ljui;->a:Ljava/lang/String;

    iput-object v1, v2, Lkiy;->a:Ljava/lang/String;

    .line 125
    :cond_0
    iget-object v1, p0, Lhem;->c:Lkju;

    iput-object v1, v2, Lkiy;->b:Lkju;

    .line 126
    iget-object v1, v2, Lkiy;->b:Lkju;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lkju;->u:Ljava/lang/Long;

    .line 130
    const-string v1, "media_sessions/log"

    const-class v3, Lkiz;

    const v5, 0xea60

    const/4 v6, 0x5

    move-object v4, p0

    invoke-interface/range {v0 .. v6}, Lhbl;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;II)V

    .line 132
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    :goto_1
    const-string v1, "vclib"

    const-string v2, "LogData upload failed to get credentials for user"

    invoke-static {v1, v2, v0}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    goto :goto_1
.end method
