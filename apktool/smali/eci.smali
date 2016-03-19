.class public final Leci;
.super Laxv;
.source "SourceFile"


# static fields
.field public static a:Leci;

.field public static b:Z

.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    sget-object v0, Lezi;->o:Limx;

    sput-boolean v1, Leci;->c:Z

    .line 20
    sput-boolean v1, Leci;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Laxv;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 105
    sput-boolean v1, Leci;->b:Z

    .line 106
    invoke-static {}, Ldvd;->g()[I

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 108
    invoke-static {v4}, Ldvd;->e(I)Lbfd;

    move-result-object v4

    .line 107
    invoke-static {v4, v1}, Leck;->a(Lbfd;Z)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1079
    new-instance v1, Lexk;

    const-string v3, "com.google.android.apps.hangouts.phone.notify_set_active"

    const-string v4, "com.google.android.apps.hangouts.phone.force_set_active"

    invoke-direct {v1, p1, v3, v4}, Lexk;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v1}, Lexk;->a()Z

    move-result v1

    .line 1056
    if-eqz v1, :cond_1

    move v1, v2

    .line 33
    :goto_0
    if-eqz v1, :cond_3

    .line 34
    sput-boolean v2, Leci;->b:Z

    .line 35
    invoke-static {}, Ldvd;->g()[I

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget v4, v1, v0

    .line 36
    invoke-static {v4}, Ldvd;->e(I)Lbfd;

    move-result-object v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    invoke-static {v4, v2}, Leck;->a(Lbfd;Z)V

    .line 39
    invoke-static {v4}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Lbfd;)V

    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1093
    :cond_1
    new-instance v1, Lexk;

    const-string v3, "com.google.android.apps.hangouts.phone.notify_set_active"

    const-string v4, "com.google.android.apps.hangouts.phone.block_set_active"

    invoke-direct {v1, p1, v3, v4}, Lexk;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v1}, Lexk;->a()Z

    move-result v1

    .line 1062
    if-nez v1, :cond_2

    .line 1065
    sget-boolean v1, Leci;->b:Z

    if-nez v1, :cond_2

    instance-of v1, p1, Lecj;

    if-eqz v1, :cond_2

    .line 1067
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Laal;->v(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    .line 43
    :cond_3
    return-void
.end method
