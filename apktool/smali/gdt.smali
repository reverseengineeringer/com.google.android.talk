.class public final Lgdt;
.super Lgdv;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/app/PendingIntent;

.field final synthetic i:Lgdl;


# direct methods
.method public constructor <init>(Lgdl;Lfic;JLandroid/app/PendingIntent;)V
    .locals 1

    iput-object p1, p0, Lgdt;->i:Lgdl;

    iput-wide p3, p0, Lgdt;->a:J

    iput-object p5, p0, Lgdt;->b:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lgdv;-><init>(Lfic;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lfia;)V
    .locals 3

    .prologue
    .line 0
    check-cast p1, Lgej;

    .line 1000
    iget-wide v0, p0, Lgdt;->a:J

    iget-object v2, p0, Lgdt;->b:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, v2}, Lgej;->a(JLandroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lgdt;->a(Lfim;)V

    .line 0
    return-void
.end method
