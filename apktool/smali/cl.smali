.class public final Lcl;
.super Lcj;
.source "SourceFile"


# static fields
.field public static a:Z


# instance fields
.field final b:Lig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lig",
            "<",
            "Lcm;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lig",
            "<",
            "Lcm;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/String;

.field e:Z

.field f:Z

.field g:Z

.field h:Lbf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    sput-boolean v0, Lcl;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lbf;Z)V
    .locals 1

    .prologue
    .line 526
    invoke-direct {p0}, Lcj;-><init>()V

    .line 197
    new-instance v0, Lig;

    invoke-direct {v0}, Lig;-><init>()V

    iput-object v0, p0, Lcl;->b:Lig;

    .line 203
    new-instance v0, Lig;

    invoke-direct {v0}, Lig;-><init>()V

    iput-object v0, p0, Lcl;->c:Lig;

    .line 527
    iput-object p1, p0, Lcl;->d:Ljava/lang/String;

    .line 528
    iput-object p2, p0, Lcl;->h:Lbf;

    .line 529
    iput-boolean p3, p0, Lcl;->e:Z

    .line 530
    return-void
.end method

.method private c(ILandroid/os/Bundle;Lck;)Lcm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lck",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcm;"
        }
    .end annotation

    .prologue
    .line 538
    new-instance v0, Lcm;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm;-><init>(Lcl;ILandroid/os/Bundle;Lck;)V

    .line 539
    invoke-interface {p3, p1, p2}, Lck;->onCreateLoader(ILandroid/os/Bundle;)Lfe;

    move-result-object v1

    .line 540
    iput-object v1, v0, Lcm;->d:Lfe;

    .line 541
    return-object v0
.end method

.method private d(ILandroid/os/Bundle;Lck;)Lcm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lck",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcm;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 547
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcl;->g:Z

    .line 548
    invoke-direct {p0, p1, p2, p3}, Lcl;->c(ILandroid/os/Bundle;Lck;)Lcm;

    move-result-object v0

    .line 549
    invoke-virtual {p0, v0}, Lcl;->a(Lcm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    iput-boolean v1, p0, Lcl;->g:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcl;->g:Z

    throw v0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lck;)Lfe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lck",
            "<TD;>;)",
            "Lfe",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 592
    iget-boolean v0, p0, Lcl;->g:Z

    if-eqz v0, :cond_0

    .line 593
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, p1}, Lig;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    .line 598
    sget-boolean v1, Lcl;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initLoader in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 600
    :cond_1
    if-nez v0, :cond_4

    .line 602
    invoke-direct {p0, p1, p2, p3}, Lcl;->d(ILandroid/os/Bundle;Lck;)Lcm;

    move-result-object v0

    .line 603
    sget-boolean v1, Lcl;->a:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Created new loader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 609
    :cond_2
    :goto_0
    iget-boolean v1, v0, Lcm;->e:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcl;->e:Z

    if-eqz v1, :cond_3

    .line 611
    iget-object v1, v0, Lcm;->d:Lfe;

    iget-object v2, v0, Lcm;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcm;->b(Lfe;Ljava/lang/Object;)V

    .line 614
    :cond_3
    iget-object v0, v0, Lcm;->d:Lfe;

    return-object v0

    .line 605
    :cond_4
    sget-boolean v1, Lcl;->a:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Re-using existing loader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 606
    :cond_5
    iput-object p3, v0, Lcm;->c:Lck;

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 709
    iget-boolean v0, p0, Lcl;->g:Z

    if-eqz v0, :cond_0

    .line 710
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_0
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroyLoader in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 714
    :cond_1
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, p1}, Lig;->f(I)I

    move-result v1

    .line 715
    if-ltz v1, :cond_2

    .line 716
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, v1}, Lig;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    .line 717
    iget-object v2, p0, Lcl;->b:Lig;

    invoke-virtual {v2, v1}, Lig;->c(I)V

    .line 718
    invoke-virtual {v0}, Lcm;->g()V

    .line 720
    :cond_2
    iget-object v0, p0, Lcl;->c:Lig;

    invoke-virtual {v0, p1}, Lig;->f(I)I

    move-result v1

    .line 721
    if-ltz v1, :cond_3

    .line 722
    iget-object v0, p0, Lcl;->c:Lig;

    invoke-virtual {v0, v1}, Lig;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    .line 723
    iget-object v2, p0, Lcl;->c:Lig;

    invoke-virtual {v2, v1}, Lig;->c(I)V

    .line 724
    invoke-virtual {v0}, Lcm;->g()V

    .line 726
    :cond_3
    iget-object v0, p0, Lcl;->h:Lbf;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcl;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 727
    iget-object v0, p0, Lcl;->h:Lbf;

    iget-object v0, v0, Lbf;->d:Lbh;

    invoke-virtual {v0}, Lbh;->f()V

    .line 729
    :cond_4
    return-void
.end method

.method a(Lbf;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcl;->h:Lbf;

    .line 534
    return-void
.end method

.method a(Lcm;)V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcl;->b:Lig;

    iget v1, p1, Lcm;->a:I

    invoke-virtual {v0, v1, p1}, Lig;->a(ILjava/lang/Object;)V

    .line 558
    iget-boolean v0, p0, Lcl;->e:Z

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p1}, Lcm;->a()V

    .line 564
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 852
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0}, Lig;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 853
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 855
    :goto_0
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0}, Lig;->a()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 856
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, v1}, Lig;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    .line 857
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcl;->b:Lig;

    invoke-virtual {v4, v1}, Lig;->d(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 858
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcm;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, v3, p2, p3, p4}, Lcm;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 855
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 862
    :cond_0
    iget-object v0, p0, Lcl;->c:Lig;

    invoke-virtual {v0}, Lig;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 863
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 865
    :goto_1
    iget-object v0, p0, Lcl;->c:Lig;

    invoke-virtual {v0}, Lig;->a()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 866
    iget-object v0, p0, Lcl;->c:Lig;

    invoke-virtual {v0, v2}, Lig;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    .line 867
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcl;->c:Lig;

    invoke-virtual {v3, v2}, Lig;->d(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 868
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0, v1, p2, p3, p4}, Lcm;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 865
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 872
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 877
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0}, Lig;->a()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 878
    :goto_0
    if-ge v2, v4, :cond_1

    .line 879
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, v2}, Lig;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    .line 880
    iget-boolean v5, v0, Lcm;->h:Z

    if-eqz v5, :cond_0

    iget-boolean v0, v0, Lcm;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    .line 878
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 880
    goto :goto_1

    .line 882
    :cond_1
    return v3
.end method

.method public b(I)Lfe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lfe",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 737
    iget-boolean v0, p0, Lcl;->g:Z

    if-eqz v0, :cond_0

    .line 738
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, p1}, Lig;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    .line 742
    if-eqz v0, :cond_2

    .line 743
    iget-object v1, v0, Lcm;->n:Lcm;

    if-eqz v1, :cond_1

    .line 744
    iget-object v0, v0, Lcm;->n:Lcm;

    iget-object v0, v0, Lcm;->d:Lfe;

    .line 748
    :goto_0
    return-object v0

    .line 746
    :cond_1
    iget-object v0, v0, Lcm;->d:Lfe;

    goto :goto_0

    .line 748
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILandroid/os/Bundle;Lck;)Lfe;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lck",
            "<TD;>;)",
            "Lfe",
            "<TD;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 642
    iget-boolean v0, p0, Lcl;->g:Z

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, p1}, Lig;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    .line 647
    sget-boolean v1, Lcl;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restartLoader in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 648
    :cond_1
    if-eqz v0, :cond_4

    .line 649
    iget-object v1, p0, Lcl;->c:Lig;

    invoke-virtual {v1, p1}, Lig;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm;

    .line 650
    if-eqz v1, :cond_9

    .line 651
    iget-boolean v2, v0, Lcm;->e:Z

    if-eqz v2, :cond_5

    .line 656
    sget-boolean v2, Lcl;->a:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Removing last inactive loader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 657
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcm;->f:Z

    .line 658
    invoke-virtual {v1}, Lcm;->g()V

    .line 692
    :cond_3
    :goto_0
    iget-object v1, v0, Lcm;->d:Lfe;

    invoke-virtual {v1}, Lfe;->w()V

    .line 693
    iget-object v1, p0, Lcl;->c:Lig;

    invoke-virtual {v1, p1, v0}, Lig;->a(ILjava/lang/Object;)V

    .line 697
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcl;->d(ILandroid/os/Bundle;Lck;)Lcm;

    move-result-object v0

    .line 698
    iget-object v0, v0, Lcm;->d:Lfe;

    :goto_2
    return-object v0

    .line 664
    :cond_5
    iget-boolean v1, v0, Lcm;->h:Z

    if-nez v1, :cond_6

    .line 669
    iget-object v1, p0, Lcl;->b:Lig;

    invoke-virtual {v1, p1, v3}, Lig;->a(ILjava/lang/Object;)V

    .line 670
    invoke-virtual {v0}, Lcm;->g()V

    goto :goto_1

    .line 676
    :cond_6
    invoke-virtual {v0}, Lcm;->f()V

    .line 677
    iget-object v1, v0, Lcm;->n:Lcm;

    if-eqz v1, :cond_8

    .line 678
    sget-boolean v1, Lcl;->a:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Removing pending loader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcm;->n:Lcm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 679
    :cond_7
    iget-object v1, v0, Lcm;->n:Lcm;

    invoke-virtual {v1}, Lcm;->g()V

    .line 680
    iput-object v3, v0, Lcm;->n:Lcm;

    .line 683
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcl;->c(ILandroid/os/Bundle;Lck;)Lcm;

    move-result-object v1

    iput-object v1, v0, Lcm;->n:Lcm;

    .line 685
    iget-object v0, v0, Lcm;->n:Lcm;

    iget-object v0, v0, Lcm;->d:Lfe;

    goto :goto_2

    .line 691
    :cond_9
    sget-boolean v1, Lcl;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Making last loader inactive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 752
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 753
    :cond_0
    iget-boolean v0, p0, Lcl;->e:Z

    if-eqz v0, :cond_2

    .line 754
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called doStart when already started: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 767
    :cond_1
    return-void

    .line 760
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl;->e:Z

    .line 764
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0}, Lig;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 765
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, v1}, Lig;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    invoke-virtual {v0}, Lcm;->a()V

    .line 764
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 770
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stopping in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 771
    :cond_0
    iget-boolean v0, p0, Lcl;->e:Z

    if-nez v0, :cond_1

    .line 772
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called doStop when not started: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 782
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0}, Lig;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 779
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, v1}, Lig;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    invoke-virtual {v0}, Lcm;->e()V

    .line 778
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 781
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl;->e:Z

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    .line 785
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Retaining in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 786
    :cond_0
    iget-boolean v0, p0, Lcl;->e:Z

    if-nez v0, :cond_2

    .line 787
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called doRetain when not started: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 798
    :cond_1
    return-void

    .line 793
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl;->f:Z

    .line 794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl;->e:Z

    .line 795
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0}, Lig;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 796
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, v1}, Lig;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    invoke-virtual {v0}, Lcm;->b()V

    .line 795
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method e()V
    .locals 2

    .prologue
    .line 801
    iget-boolean v0, p0, Lcl;->f:Z

    if-eqz v0, :cond_1

    .line 802
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished Retaining in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 804
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl;->f:Z

    .line 805
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0}, Lig;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 806
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, v1}, Lig;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    invoke-virtual {v0}, Lcm;->c()V

    .line 805
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 809
    :cond_1
    return-void
.end method

.method f()V
    .locals 3

    .prologue
    .line 812
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0}, Lig;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 813
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, v1}, Lig;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcm;->k:Z

    .line 812
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 815
    :cond_0
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0}, Lig;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 819
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, v1}, Lig;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    invoke-virtual {v0}, Lcm;->d()V

    .line 818
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 821
    :cond_0
    return-void
.end method

.method h()V
    .locals 2

    .prologue
    .line 824
    iget-boolean v0, p0, Lcl;->f:Z

    if-nez v0, :cond_2

    .line 825
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destroying Active in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 826
    :cond_0
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0}, Lig;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 827
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0, v1}, Lig;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    invoke-virtual {v0}, Lcm;->g()V

    .line 826
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcl;->b:Lig;

    invoke-virtual {v0}, Lig;->b()V

    .line 832
    :cond_2
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destroying Inactive in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 833
    :cond_3
    iget-object v0, p0, Lcl;->c:Lig;

    invoke-virtual {v0}, Lig;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 834
    iget-object v0, p0, Lcl;->c:Lig;

    invoke-virtual {v0, v1}, Lig;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    invoke-virtual {v0}, Lcm;->g()V

    .line 833
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 836
    :cond_4
    iget-object v0, p0, Lcl;->c:Lig;

    invoke-virtual {v0}, Lig;->b()V

    .line 837
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 842
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    iget-object v1, p0, Lcl;->h:Lbf;

    invoke-static {v1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 846
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
