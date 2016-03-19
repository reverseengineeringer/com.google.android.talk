.class public final Lgdu;
.super Lgdv;


# instance fields
.field final synthetic a:Landroid/app/PendingIntent;

.field final synthetic b:Lgdl;


# direct methods
.method public constructor <init>(Lgdl;Lfic;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lgdu;->b:Lgdl;

    iput-object p3, p0, Lgdu;->a:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lgdv;-><init>(Lfic;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lfia;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Lgej;

    .line 1000
    iget-object v0, p0, Lgdu;->a:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Lgej;->a(Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lgdu;->a(Lfim;)V

    .line 0
    return-void
.end method
