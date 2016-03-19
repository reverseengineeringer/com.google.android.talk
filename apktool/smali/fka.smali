.class final Lfka;
.super Ljava/lang/Object;

# interfaces
.implements Lfih;


# instance fields
.field public final a:I

.field public final b:Lfic;

.field public final c:Lfih;

.field final synthetic d:Lfjz;


# direct methods
.method public constructor <init>(Lfjz;ILfic;Lfih;)V
    .locals 0

    iput-object p1, p0, Lfka;->d:Lfjz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lfka;->a:I

    iput-object p3, p0, Lfka;->b:Lfic;

    iput-object p4, p0, Lfka;->c:Lfih;

    invoke-interface {p3, p0}, Lfic;->a(Lfih;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lfka;->b:Lfic;

    invoke-interface {v0, p0}, Lfic;->b(Lfih;)V

    iget-object v0, p0, Lfka;->b:Lfic;

    invoke-interface {v0}, Lfic;->d()V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Lfka;->d:Lfjz;

    invoke-static {v0}, Lfjz;->e(Lfjz;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lfkb;

    iget-object v2, p0, Lfka;->d:Lfjz;

    iget v3, p0, Lfka;->a:I

    invoke-direct {v1, v2, v3, p1}, Lfkb;-><init>(Lfjz;ILcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "GoogleApiClient #"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lfka;->a:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lfka;->b:Lfic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lfic;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method
