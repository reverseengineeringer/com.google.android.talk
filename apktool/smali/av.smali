.class public Lav;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final a:Lif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lif",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field static final j:Ljava/lang/Object;


# instance fields
.field A:Z

.field B:I

.field C:Lbh;

.field D:Lbf;

.field E:Lbh;

.field F:Lav;

.field G:I

.field H:I

.field I:Ljava/lang/String;

.field J:Z

.field K:Z

.field L:Z

.field M:Z

.field N:Z

.field O:Z

.field P:Z

.field Q:I

.field R:Landroid/view/ViewGroup;

.field S:Landroid/view/View;

.field T:Landroid/view/View;

.field U:Z

.field V:Z

.field W:Lcl;

.field X:Z

.field Y:Z

.field Z:Ljava/lang/Object;

.field aa:Ljava/lang/Object;

.field ab:Ljava/lang/Object;

.field ac:Ljava/lang/Object;

.field ad:Ljava/lang/Object;

.field ae:Ljava/lang/Object;

.field af:Ljava/lang/Boolean;

.field ag:Ljava/lang/Boolean;

.field ah:Lem;

.field ai:Lem;

.field k:I

.field l:Landroid/view/View;

.field m:I

.field n:Landroid/os/Bundle;

.field o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field p:I

.field q:Ljava/lang/String;

.field r:Landroid/os/Bundle;

.field s:Lav;

.field t:I

.field u:I

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lif;

    invoke-direct {v0}, Lif;-><init>()V

    sput-object v0, Lav;->a:Lif;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lav;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lav;->k:I

    .line 197
    iput v2, p0, Lav;->p:I

    .line 209
    iput v2, p0, Lav;->t:I

    .line 280
    iput-boolean v3, p0, Lav;->O:Z

    .line 302
    iput-boolean v3, p0, Lav;->V:Z

    .line 308
    iput-object v1, p0, Lav;->Z:Ljava/lang/Object;

    .line 309
    sget-object v0, Lav;->j:Ljava/lang/Object;

    iput-object v0, p0, Lav;->aa:Ljava/lang/Object;

    .line 310
    iput-object v1, p0, Lav;->ab:Ljava/lang/Object;

    .line 311
    sget-object v0, Lav;->j:Ljava/lang/Object;

    iput-object v0, p0, Lav;->ac:Ljava/lang/Object;

    .line 312
    iput-object v1, p0, Lav;->ad:Ljava/lang/Object;

    .line 313
    sget-object v0, Lav;->j:Ljava/lang/Object;

    iput-object v0, p0, Lav;->ae:Ljava/lang/Object;

    .line 317
    iput-object v1, p0, Lav;->ah:Lem;

    .line 318
    iput-object v1, p0, Lav;->ai:Lem;

    .line 391
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 454
    :try_start_0
    sget-object v0, Lav;->a:Lif;

    invoke-virtual {v0, p1}, Lif;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 455
    if-nez v0, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 458
    sget-object v1, Lav;->a:Lif;

    invoke-virtual {v1, p1, v0}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_0
    const-class v1, Lav;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 462
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Lav;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lav;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lav;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lav;
    .locals 4

    .prologue
    .line 417
    :try_start_0
    sget-object v0, Lav;->a:Lif;

    invoke-virtual {v0, p1}, Lif;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 418
    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 421
    sget-object v1, Lav;->a:Lif;

    invoke-virtual {v1, p1, v0}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav;

    .line 424
    if-eqz p2, :cond_1

    .line 425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 426
    iput-object p2, v0, Lav;->r:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 428
    :cond_1
    return-object v0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    new-instance v1, Lax;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lax;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 433
    :catch_1
    move-exception v0

    .line 434
    new-instance v1, Lax;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lax;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 437
    :catch_2
    move-exception v0

    .line 438
    new-instance v1, Lax;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lax;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method M_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1387
    const/4 v0, -0x1

    iput v0, p0, Lav;->p:I

    .line 1388
    iput-object v2, p0, Lav;->q:Ljava/lang/String;

    .line 1389
    iput-boolean v1, p0, Lav;->v:Z

    .line 1390
    iput-boolean v1, p0, Lav;->w:Z

    .line 1391
    iput-boolean v1, p0, Lav;->x:Z

    .line 1392
    iput-boolean v1, p0, Lav;->y:Z

    .line 1393
    iput-boolean v1, p0, Lav;->z:Z

    .line 1394
    iput-boolean v1, p0, Lav;->A:Z

    .line 1395
    iput v1, p0, Lav;->B:I

    .line 1396
    iput-object v2, p0, Lav;->C:Lbh;

    .line 1397
    iput-object v2, p0, Lav;->E:Lbh;

    .line 1398
    iput-object v2, p0, Lav;->D:Lbf;

    .line 1399
    iput v1, p0, Lav;->G:I

    .line 1400
    iput v1, p0, Lav;->H:I

    .line 1401
    iput-object v2, p0, Lav;->I:Ljava/lang/String;

    .line 1402
    iput-boolean v1, p0, Lav;->J:Z

    .line 1403
    iput-boolean v1, p0, Lav;->K:Z

    .line 1404
    iput-boolean v1, p0, Lav;->M:Z

    .line 1405
    iput-object v2, p0, Lav;->W:Lcl;

    .line 1406
    iput-boolean v1, p0, Lav;->X:Z

    .line 1407
    iput-boolean v1, p0, Lav;->Y:Z

    .line 1408
    return-void
.end method

.method a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1959
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_0

    .line 1960
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->noteStateNotSaved()V

    .line 1962
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lav;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final a(ILav;)V
    .locals 2

    .prologue
    .line 480
    iput p1, p0, Lav;->p:I

    .line 481
    if-eqz p2, :cond_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lav;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lav;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lav;->q:Ljava/lang/String;

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:fragment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lav;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lav;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 2017
    invoke-virtual {p0, p1}, Lav;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2018
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_0

    .line 2019
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0, p1}, Lbh;->a(Landroid/content/res/Configuration;)V

    .line 2021
    :cond_0
    return-void
.end method

.method a(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 2054
    const/4 v0, 0x0

    .line 2055
    iget-boolean v1, p0, Lav;->J:Z

    if-nez v1, :cond_1

    .line 2056
    iget-boolean v1, p0, Lav;->N:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lav;->O:Z

    if-eqz v1, :cond_0

    .line 2057
    const/4 v0, 0x1

    .line 2058
    invoke-virtual {p0, p1}, Lav;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2060
    :cond_0
    iget-object v1, p0, Lav;->E:Lbh;

    if-eqz v1, :cond_1

    .line 2061
    iget-object v1, p0, Lav;->E:Lbh;

    invoke-virtual {v1, p1}, Lbh;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2064
    :cond_1
    return v0
.end method

.method a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .prologue
    .line 2040
    const/4 v0, 0x0

    .line 2041
    iget-boolean v1, p0, Lav;->J:Z

    if-nez v1, :cond_1

    .line 2042
    iget-boolean v1, p0, Lav;->N:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lav;->O:Z

    if-eqz v1, :cond_0

    .line 2043
    const/4 v0, 0x1

    .line 2044
    invoke-virtual {p0, p1, p2}, Lav;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2046
    :cond_0
    iget-object v1, p0, Lav;->E:Lbh;

    if-eqz v1, :cond_1

    .line 2047
    iget-object v1, p0, Lav;->E:Lbh;

    invoke-virtual {v1, p1, p2}, Lbh;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2050
    :cond_1
    return v0
.end method

.method a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2068
    iget-boolean v1, p0, Lav;->J:Z

    if-nez v1, :cond_2

    .line 2069
    iget-boolean v1, p0, Lav;->N:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lav;->O:Z

    if-eqz v1, :cond_1

    .line 2070
    invoke-virtual {p0, p1}, Lav;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2080
    :cond_0
    :goto_0
    return v0

    .line 2074
    :cond_1
    iget-object v1, p0, Lav;->E:Lbh;

    if-eqz v1, :cond_2

    .line 2075
    iget-object v1, p0, Lav;->E:Lbh;

    invoke-virtual {v1, p1}, Lbh;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2080
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1935
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->noteStateNotSaved()V

    .line 1938
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lav;->P:Z

    .line 1939
    invoke-virtual {p0, p1}, Lav;->onCreate(Landroid/os/Bundle;)V

    .line 1940
    iget-boolean v0, p0, Lav;->P:Z

    if-nez v0, :cond_1

    .line 1941
    new-instance v0, Len;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Len;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1944
    :cond_1
    if-eqz p1, :cond_3

    .line 1945
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1947
    if-eqz v0, :cond_3

    .line 1948
    iget-object v1, p0, Lav;->E:Lbh;

    if-nez v1, :cond_2

    .line 1949
    invoke-virtual {p0}, Lav;->h()V

    .line 1951
    :cond_2
    iget-object v1, p0, Lav;->E:Lbh;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbh;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 1952
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->j()V

    .line 1955
    :cond_3
    return-void
.end method

.method b(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 2098
    iget-boolean v0, p0, Lav;->J:Z

    if-nez v0, :cond_1

    .line 2099
    iget-boolean v0, p0, Lav;->N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lav;->O:Z

    if-eqz v0, :cond_0

    .line 2100
    invoke-virtual {p0, p1}, Lav;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2102
    :cond_0
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_1

    .line 2103
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0, p1}, Lbh;->b(Landroid/view/Menu;)V

    .line 2106
    :cond_1
    return-void
.end method

.method b(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2084
    iget-boolean v1, p0, Lav;->J:Z

    if-nez v1, :cond_2

    .line 2085
    invoke-virtual {p0, p1}, Lav;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2094
    :cond_0
    :goto_0
    return v0

    .line 2088
    :cond_1
    iget-object v1, p0, Lav;->E:Lbh;

    if-eqz v1, :cond_2

    .line 2089
    iget-object v1, p0, Lav;->E:Lbh;

    invoke-virtual {v1, p1}, Lbh;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2094
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1966
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->noteStateNotSaved()V

    .line 1969
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lav;->P:Z

    .line 1970
    invoke-virtual {p0, p1}, Lav;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1971
    iget-boolean v0, p0, Lav;->P:Z

    if-nez v0, :cond_1

    .line 1972
    new-instance v0, Len;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Len;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1975
    :cond_1
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_2

    .line 1976
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->k()V

    .line 1978
    :cond_2
    return-void
.end method

.method d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2109
    invoke-virtual {p0, p1}, Lav;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2110
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->i()Landroid/os/Parcelable;

    move-result-object v0

    .line 2112
    if-eqz v0, :cond_0

    .line 2113
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2116
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1829
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1830
    iget v0, p0, Lav;->G:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1831
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1832
    iget v0, p0, Lav;->H:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1833
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lav;->I:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lav;->k:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1835
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lav;->p:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1836
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lav;->q:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1837
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lav;->B:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1838
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lav;->v:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1839
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lav;->w:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1840
    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lav;->x:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1841
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lav;->y:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1842
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lav;->z:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1843
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lav;->J:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1844
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lav;->K:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1845
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lav;->O:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1846
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lav;->N:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1847
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lav;->L:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1848
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lav;->M:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1849
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lav;->V:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1850
    iget-object v0, p0, Lav;->C:Lbh;

    if-eqz v0, :cond_0

    .line 1851
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1852
    iget-object v0, p0, Lav;->C:Lbh;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1854
    :cond_0
    iget-object v0, p0, Lav;->D:Lbf;

    if-eqz v0, :cond_1

    .line 1855
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1856
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1858
    :cond_1
    iget-object v0, p0, Lav;->F:Lav;

    if-eqz v0, :cond_2

    .line 1859
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1860
    iget-object v0, p0, Lav;->F:Lav;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1862
    :cond_2
    iget-object v0, p0, Lav;->r:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1863
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lav;->r:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1865
    :cond_3
    iget-object v0, p0, Lav;->n:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1866
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1867
    iget-object v0, p0, Lav;->n:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1869
    :cond_4
    iget-object v0, p0, Lav;->o:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 1870
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1871
    iget-object v0, p0, Lav;->o:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1873
    :cond_5
    iget-object v0, p0, Lav;->s:Lav;

    if-eqz v0, :cond_6

    .line 1874
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lav;->s:Lav;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1875
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1876
    iget v0, p0, Lav;->u:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1878
    :cond_6
    iget v0, p0, Lav;->Q:I

    if-eqz v0, :cond_7

    .line 1879
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lav;->Q:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1881
    :cond_7
    iget-object v0, p0, Lav;->R:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 1882
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lav;->R:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1884
    :cond_8
    iget-object v0, p0, Lav;->S:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1885
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lav;->S:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1887
    :cond_9
    iget-object v0, p0, Lav;->T:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1888
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lav;->S:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1890
    :cond_a
    iget-object v0, p0, Lav;->l:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1891
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lav;->l:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1892
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1893
    iget v0, p0, Lav;->m:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1895
    :cond_b
    iget-object v0, p0, Lav;->W:Lcl;

    if-eqz v0, :cond_c

    .line 1896
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1897
    iget-object v0, p0, Lav;->W:Lcl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcl;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1899
    :cond_c
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_d

    .line 1900
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lav;->E:Lbh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1901
    iget-object v0, p0, Lav;->E:Lbh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lbh;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1903
    :cond_d
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 496
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getActivity()Lba;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lav;->D:Lbf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {v0}, Lbf;->h()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lba;

    goto :goto_0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .prologue
    .line 1792
    iget-object v0, p0, Lav;->ag:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lav;->ag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .prologue
    .line 1816
    iget-object v0, p0, Lav;->af:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lav;->af:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lav;->r:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Lbg;
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lav;->E:Lbh;

    if-nez v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lav;->h()V

    .line 698
    iget v0, p0, Lav;->k:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 699
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->m()V

    .line 708
    :cond_0
    :goto_0
    iget-object v0, p0, Lav;->E:Lbh;

    return-object v0

    .line 700
    :cond_1
    iget v0, p0, Lav;->k:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 701
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->l()V

    goto :goto_0

    .line 702
    :cond_2
    iget v0, p0, Lav;->k:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 703
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->k()V

    goto :goto_0

    .line 704
    :cond_3
    iget v0, p0, Lav;->k:I

    if-lez v0, :cond_0

    .line 705
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->j()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lav;->D:Lbf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {v0}, Lbf;->i()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lav;->Z:Ljava/lang/Object;

    return-object v0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lav;->ab:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFragmentManager()Lbg;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lav;->C:Lbh;

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lav;->D:Lbf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {v0}, Lbf;->g()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lav;->G:I

    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 1076
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {v0}, Lbf;->c()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1077
    invoke-virtual {p0}, Lav;->getChildFragmentManager()Lbg;

    .line 1078
    iget-object v1, p0, Lav;->E:Lbh;

    invoke-virtual {v1}, Lbh;->t()Ljm;

    move-result-object v1

    invoke-static {v0, v1}, Ljg;->a(Landroid/view/LayoutInflater;Ljm;)V

    .line 1079
    return-object v0
.end method

.method public getLoaderManager()Lcj;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 897
    iget-object v0, p0, Lav;->W:Lcl;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lav;->W:Lcl;

    .line 905
    :goto_0
    return-object v0

    .line 900
    :cond_0
    iget-object v0, p0, Lav;->D:Lbf;

    if-nez v0, :cond_1

    .line 901
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_1
    iput-boolean v3, p0, Lav;->Y:Z

    .line 904
    iget-object v0, p0, Lav;->D:Lbf;

    iget-object v1, p0, Lav;->q:Ljava/lang/String;

    iget-boolean v2, p0, Lav;->X:Z

    invoke-virtual {v0, v1, v2, v3}, Lbf;->a(Ljava/lang/String;ZZ)Lcl;

    move-result-object v0

    iput-object v0, p0, Lav;->W:Lcl;

    .line 905
    iget-object v0, p0, Lav;->W:Lcl;

    goto :goto_0
.end method

.method public final getParentFragment()Lav;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lav;->F:Lav;

    return-object v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1708
    iget-object v0, p0, Lav;->ac:Ljava/lang/Object;

    sget-object v1, Lav;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lav;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lav;->ac:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 638
    iget-object v0, p0, Lav;->D:Lbf;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_0
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {v0}, Lbf;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    .prologue
    .line 827
    iget-boolean v0, p0, Lav;->L:Z

    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1641
    iget-object v0, p0, Lav;->aa:Ljava/lang/Object;

    sget-object v1, Lav;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lav;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lav;->aa:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lav;->ad:Ljava/lang/Object;

    return-object v0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1767
    iget-object v0, p0, Lav;->ae:Ljava/lang/Object;

    sget-object v1, Lav;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lav;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lav;->ae:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    invoke-virtual {p0}, Lav;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    invoke-virtual {p0}, Lav;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lav;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Lav;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lav;->s:Lav;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lav;->u:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lav;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Lav;->V:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lav;->S:Landroid/view/View;

    return-object v0
.end method

.method h()V
    .locals 3

    .prologue
    .line 1916
    new-instance v0, Lbh;

    invoke-direct {v0}, Lbh;-><init>()V

    iput-object v0, p0, Lav;->E:Lbh;

    .line 1917
    iget-object v0, p0, Lav;->E:Lbh;

    iget-object v1, p0, Lav;->D:Lbf;

    new-instance v2, Law;

    invoke-direct {v2, p0}, Law;-><init>(Lav;)V

    invoke-virtual {v0, v1, v2, p0}, Lbh;->a(Lbf;Lbe;Lav;)V

    .line 1932
    return-void
.end method

.method public final hasOptionsMenu()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lav;->N:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 503
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method i()V
    .locals 3

    .prologue
    .line 1981
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->noteStateNotSaved()V

    .line 1983
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->g()Z

    .line 1985
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lav;->P:Z

    .line 1986
    invoke-virtual {p0}, Lav;->onStart()V

    .line 1987
    iget-boolean v0, p0, Lav;->P:Z

    if-nez v0, :cond_1

    .line 1988
    new-instance v0, Len;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Len;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1991
    :cond_1
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_2

    .line 1992
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->l()V

    .line 1994
    :cond_2
    iget-object v0, p0, Lav;->W:Lcl;

    if-eqz v0, :cond_3

    .line 1995
    iget-object v0, p0, Lav;->W:Lcl;

    invoke-virtual {v0}, Lcl;->g()V

    .line 1997
    :cond_3
    return-void
.end method

.method public final isAdded()Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lav;->D:Lbf;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lav;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDetached()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lav;->K:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lav;->J:Z

    return v0
.end method

.method public final isInLayout()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lav;->z:Z

    return v0
.end method

.method public final isMenuVisible()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lav;->O:Z

    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    .prologue
    .line 741
    iget-boolean v0, p0, Lav;->w:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lav;->x:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lav;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lav;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lav;->S:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lav;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lav;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()V
    .locals 3

    .prologue
    .line 2000
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_0

    .line 2001
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->noteStateNotSaved()V

    .line 2002
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->g()Z

    .line 2004
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lav;->P:Z

    .line 2005
    invoke-virtual {p0}, Lav;->onResume()V

    .line 2006
    iget-boolean v0, p0, Lav;->P:Z

    if-nez v0, :cond_1

    .line 2007
    new-instance v0, Len;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Len;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2010
    :cond_1
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_2

    .line 2011
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->m()V

    .line 2012
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->g()Z

    .line 2014
    :cond_2
    return-void
.end method

.method k()V
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lav;->onLowMemory()V

    .line 2025
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->s()V

    .line 2028
    :cond_0
    return-void
.end method

.method l()V
    .locals 3

    .prologue
    .line 2119
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->n()V

    .line 2122
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lav;->P:Z

    .line 2123
    invoke-virtual {p0}, Lav;->onPause()V

    .line 2124
    iget-boolean v0, p0, Lav;->P:Z

    if-nez v0, :cond_1

    .line 2125
    new-instance v0, Len;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Len;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2128
    :cond_1
    return-void
.end method

.method m()V
    .locals 3

    .prologue
    .line 2131
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->o()V

    .line 2134
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lav;->P:Z

    .line 2135
    invoke-virtual {p0}, Lav;->onStop()V

    .line 2136
    iget-boolean v0, p0, Lav;->P:Z

    if-nez v0, :cond_1

    .line 2137
    new-instance v0, Len;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Len;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2140
    :cond_1
    return-void
.end method

.method n()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2143
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->p()V

    .line 2146
    :cond_0
    iget-boolean v0, p0, Lav;->X:Z

    if-eqz v0, :cond_2

    .line 2147
    iput-boolean v3, p0, Lav;->X:Z

    .line 2148
    iget-boolean v0, p0, Lav;->Y:Z

    if-nez v0, :cond_1

    .line 2149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->Y:Z

    .line 2150
    iget-object v0, p0, Lav;->D:Lbf;

    iget-object v1, p0, Lav;->q:Ljava/lang/String;

    iget-boolean v2, p0, Lav;->X:Z

    invoke-virtual {v0, v1, v2, v3}, Lbf;->a(Ljava/lang/String;ZZ)Lcl;

    move-result-object v0

    iput-object v0, p0, Lav;->W:Lcl;

    .line 2152
    :cond_1
    iget-object v0, p0, Lav;->W:Lcl;

    if-eqz v0, :cond_2

    .line 2153
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {v0}, Lbf;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2154
    iget-object v0, p0, Lav;->W:Lcl;

    invoke-virtual {v0}, Lcl;->d()V

    .line 2160
    :cond_2
    :goto_0
    return-void

    .line 2156
    :cond_3
    iget-object v0, p0, Lav;->W:Lcl;

    invoke-virtual {v0}, Lcl;->c()V

    goto :goto_0
.end method

.method o()V
    .locals 3

    .prologue
    .line 2163
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_0

    .line 2164
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->q()V

    .line 2166
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lav;->P:Z

    .line 2167
    invoke-virtual {p0}, Lav;->onDestroyView()V

    .line 2168
    iget-boolean v0, p0, Lav;->P:Z

    if-nez v0, :cond_1

    .line 2169
    new-instance v0, Len;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Len;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2172
    :cond_1
    iget-object v0, p0, Lav;->W:Lcl;

    if-eqz v0, :cond_2

    .line 2173
    iget-object v0, p0, Lav;->W:Lcl;

    invoke-virtual {v0}, Lcl;->f()V

    .line 2175
    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1255
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 945
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1164
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1149
    iget-object v0, p0, Lav;->D:Lbf;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1150
    :goto_0
    if-eqz v0, :cond_0

    .line 1151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lav;->P:Z

    .line 1152
    invoke-virtual {p0, v0}, Lav;->onAttach(Landroid/app/Activity;)V

    .line 1154
    :cond_0
    return-void

    .line 1149
    :cond_1
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {v0}, Lbf;->h()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1326
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1558
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1189
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 1170
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 1512
    invoke-virtual {p0}, Lav;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lba;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1513
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 1432
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1213
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1368
    iput-boolean v1, p0, Lav;->P:Z

    .line 1371
    iget-boolean v0, p0, Lav;->Y:Z

    if-nez v0, :cond_0

    .line 1372
    iput-boolean v1, p0, Lav;->Y:Z

    .line 1373
    iget-object v0, p0, Lav;->D:Lbf;

    iget-object v1, p0, Lav;->q:Ljava/lang/String;

    iget-boolean v2, p0, Lav;->X:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lbf;->a(Ljava/lang/String;ZZ)Lcl;

    move-result-object v0

    iput-object v0, p0, Lav;->W:Lcl;

    .line 1375
    :cond_0
    iget-object v0, p0, Lav;->W:Lcl;

    if-eqz v0, :cond_1

    .line 1376
    iget-object v0, p0, Lav;->W:Lcl;

    invoke-virtual {v0}, Lcl;->h()V

    .line 1378
    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .prologue
    .line 1459
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 1360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1361
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 1415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1416
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .prologue
    .line 802
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1141
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1126
    iget-object v0, p0, Lav;->D:Lbf;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1127
    :goto_0
    if-eqz v0, :cond_0

    .line 1128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lav;->P:Z

    .line 1129
    invoke-virtual {p0, v0, p2, p3}, Lav;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1131
    :cond_0
    return-void

    .line 1126
    :cond_1
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {v0}, Lbf;->h()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1348
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1480
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1491
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1335
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1449
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 1041
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1300
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1322
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1278
    iput-boolean v1, p0, Lav;->P:Z

    .line 1280
    iget-boolean v0, p0, Lav;->X:Z

    if-nez v0, :cond_1

    .line 1281
    iput-boolean v1, p0, Lav;->X:Z

    .line 1282
    iget-boolean v0, p0, Lav;->Y:Z

    if-nez v0, :cond_0

    .line 1283
    iput-boolean v1, p0, Lav;->Y:Z

    .line 1284
    iget-object v0, p0, Lav;->D:Lbf;

    iget-object v1, p0, Lav;->q:Ljava/lang/String;

    iget-boolean v2, p0, Lav;->X:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lbf;->a(Ljava/lang/String;ZZ)Lcl;

    move-result-object v0

    iput-object v0, p0, Lav;->W:Lcl;

    .line 1286
    :cond_0
    iget-object v0, p0, Lav;->W:Lcl;

    if-eqz v0, :cond_1

    .line 1287
    iget-object v0, p0, Lav;->W:Lcl;

    invoke-virtual {v0}, Lcl;->b()V

    .line 1290
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1344
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1227
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->P:Z

    .line 1270
    return-void
.end method

.method p()V
    .locals 3

    .prologue
    .line 2178
    iget-object v0, p0, Lav;->E:Lbh;

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Lav;->E:Lbh;

    invoke-virtual {v0}, Lbh;->r()V

    .line 2181
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lav;->P:Z

    .line 2182
    invoke-virtual {p0}, Lav;->onDestroy()V

    .line 2183
    iget-boolean v0, p0, Lav;->P:Z

    if-nez v0, :cond_1

    .line 2184
    new-instance v0, Len;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Len;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2187
    :cond_1
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1526
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1527
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1015
    iget-object v0, p0, Lav;->D:Lbf;

    if-nez v0, :cond_0

    .line 1016
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1018
    :cond_0
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {v0, p0, p1, p2}, Lbf;->a(Lav;[Ljava/lang/String;I)V

    .line 1019
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1

    .prologue
    .line 1780
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lav;->ag:Ljava/lang/Boolean;

    .line 1781
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1

    .prologue
    .line 1804
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lav;->af:Ljava/lang/Boolean;

    .line 1805
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 550
    iget v0, p0, Lav;->p:I

    if-ltz v0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    iput-object p1, p0, Lav;->r:Landroid/os/Bundle;

    .line 554
    return-void
.end method

.method public setEnterSharedElementCallback(Lem;)V
    .locals 0

    .prologue
    .line 1569
    iput-object p1, p0, Lav;->ah:Lem;

    .line 1570
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1594
    iput-object p1, p0, Lav;->Z:Ljava/lang/Object;

    .line 1595
    return-void
.end method

.method public setExitSharedElementCallback(Lem;)V
    .locals 0

    .prologue
    .line 1580
    iput-object p1, p0, Lav;->ai:Lem;

    .line 1581
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1659
    iput-object p1, p0, Lav;->ab:Ljava/lang/Object;

    .line 1660
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lav;->N:Z

    if-eq v0, p1, :cond_0

    .line 839
    iput-boolean p1, p0, Lav;->N:Z

    .line 840
    invoke-virtual {p0}, Lav;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lav;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {v0}, Lbf;->d()V

    .line 844
    :cond_0
    return-void
.end method

.method public setInitialSavedState(Lay;)V
    .locals 2

    .prologue
    .line 573
    iget v0, p0, Lav;->p:I

    if-ltz v0, :cond_0

    .line 574
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lay;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lay;->a:Landroid/os/Bundle;

    :goto_0
    iput-object v0, p0, Lav;->n:Landroid/os/Bundle;

    .line 578
    return-void

    .line 576
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    .prologue
    .line 856
    iget-boolean v0, p0, Lav;->O:Z

    if-eq v0, p1, :cond_0

    .line 857
    iput-boolean p1, p0, Lav;->O:Z

    .line 858
    iget-boolean v0, p0, Lav;->N:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lav;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lav;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {v0}, Lbf;->d()V

    .line 862
    :cond_0
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1692
    iput-object p1, p0, Lav;->ac:Ljava/lang/Object;

    .line 1693
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 2

    .prologue
    .line 819
    if-eqz p1, :cond_0

    iget-object v0, p0, Lav;->F:Lav;

    if-eqz v0, :cond_0

    .line 820
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t retain fragements that are nested in other fragments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_0
    iput-boolean p1, p0, Lav;->L:Z

    .line 824
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1625
    iput-object p1, p0, Lav;->aa:Ljava/lang/Object;

    .line 1626
    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1722
    iput-object p1, p0, Lav;->ad:Ljava/lang/Object;

    .line 1723
    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1751
    iput-object p1, p0, Lav;->ae:Ljava/lang/Object;

    .line 1752
    return-void
.end method

.method public setTargetFragment(Lav;I)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lav;->s:Lav;

    .line 593
    iput p2, p0, Lav;->u:I

    .line 594
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .prologue
    .line 878
    iget-boolean v0, p0, Lav;->V:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lav;->k:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 879
    iget-object v0, p0, Lav;->C:Lbh;

    invoke-virtual {v0, p0}, Lbh;->a(Lav;)V

    .line 881
    :cond_0
    iput-boolean p1, p0, Lav;->V:Z

    .line 882
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lav;->U:Z

    .line 883
    return-void

    .line 882
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lav;->D:Lbf;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {v0, p1}, Lbf;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1067
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 913
    iget-object v0, p0, Lav;->D:Lbf;

    if-nez v0, :cond_0

    .line 914
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_0
    iget-object v0, p0, Lav;->D:Lbf;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lbf;->a(Lav;Landroid/content/Intent;I)V

    .line 917
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 924
    iget-object v0, p0, Lav;->D:Lbf;

    if-nez v0, :cond_0

    .line 925
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_0
    iget-object v0, p0, Lav;->D:Lbf;

    invoke-virtual {v0, p0, p1, p2}, Lbf;->a(Lav;Landroid/content/Intent;I)V

    .line 928
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 509
    invoke-static {p0, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 510
    iget v1, p0, Lav;->p:I

    if-ltz v1, :cond_0

    .line 511
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget v1, p0, Lav;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    :cond_0
    iget v1, p0, Lav;->G:I

    if-eqz v1, :cond_1

    .line 515
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget v1, p0, Lav;->G:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_1
    iget-object v1, p0, Lav;->I:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 519
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    iget-object v1, p0, Lav;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1537
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1538
    return-void
.end method
