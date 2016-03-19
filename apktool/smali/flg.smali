.class public final Lflg;
.super Lfly;


# instance fields
.field private a:Lflc;

.field private final b:I


# direct methods
.method public constructor <init>(Lflc;I)V
    .locals 0

    invoke-direct {p0}, Lfly;-><init>()V

    iput-object p1, p0, Lflg;->a:Lflc;

    iput p2, p0, Lflg;->b:I

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lflg;->a:Lflc;

    const-string v1, "onAccountValidationComplete can be called only once per call to validateAccount"

    invoke-static {v0, v1}, Laal;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lflg;->a:Lflc;

    iget v1, p0, Lflg;->b:I

    invoke-virtual {v0, p1, p2, v1}, Lflc;->a(ILandroid/os/Bundle;I)V

    .line 1000
    const/4 v0, 0x0

    iput-object v0, p0, Lflg;->a:Lflc;

    .line 0
    return-void
.end method

.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lflg;->a:Lflc;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Laal;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lflg;->a:Lflc;

    iget v1, p0, Lflg;->b:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lflc;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 2000
    const/4 v0, 0x0

    iput-object v0, p0, Lflg;->a:Lflc;

    .line 0
    return-void
.end method
