.class public final Ldvs;
.super Laxv;
.source "SourceFile"


# static fields
.field public static a:Ldvs;

.field private static final b:Z


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Ldvs;->b:Z

    .line 19
    const/4 v0, 0x0

    sput-object v0, Ldvs;->a:Ldvs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Laxv;-><init>()V

    .line 24
    iput-object p1, p0, Ldvs;->c:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Ldvs;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/BackgroundGcmTickleService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Ldvs;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/BackgroundGcmTickleService;->a(Landroid/content/Context;Z)V

    .line 43
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Ldvs;->c:Landroid/content/Context;

    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0}, Lhpz;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1043
    const/4 v2, 0x0

    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1172
    sget-object v2, Ldvp;->g:Ldml;

    invoke-virtual {v2, v0}, Ldml;->b(I)Z

    move-result v0

    .line 50
    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvs;->c:Landroid/content/Context;

    .line 51
    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/BackgroundGcmTickleService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Ldvs;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/BackgroundGcmTickleService;->a(Landroid/content/Context;Z)V

    .line 60
    :cond_1
    return-void
.end method
