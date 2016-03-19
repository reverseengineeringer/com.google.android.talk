.class public final Lgdl;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfic;JLandroid/app/PendingIntent;)Lfij;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "J",
            "Landroid/app/PendingIntent;",
            ")",
            "Lfij",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    new-instance v1, Lgdt;

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lgdt;-><init>(Lgdl;Lfic;JLandroid/app/PendingIntent;)V

    invoke-interface {p1, v1}, Lfic;->b(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method

.method public a(Lfic;Landroid/app/PendingIntent;)Lfij;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lfij",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2000
    new-instance v0, Lgdu;

    invoke-direct {v0, p0, p1, p2}, Lgdu;-><init>(Lgdl;Lfic;Landroid/app/PendingIntent;)V

    invoke-interface {p1, v0}, Lfic;->b(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method
